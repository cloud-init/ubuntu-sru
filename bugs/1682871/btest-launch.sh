#!/bin/bash -e
# Boot a zesty cloud-image to recreate http://pad.lv/1669860
#
# console will appear on stdio.  ctrl-e is the qemu escape
#  (to quit: hit ctrl-e q)
# You can login with ubuntu:passw0rd
# To ssh into the instance: ssh -p 2222 ubuntu@localhost

mode="${MODE:-bond}" # or bond-vlan or vlan

BOOT=$1
LPID=$2
PRE="btest-"
REDIR_PORT="2222"
USERDATA="$PRE-user-data"
METADATA="$PRE-meta-data"
NETWORK_CONFIG="$PRE-network-config-$mode"
SEED=bond-rename-seed.img
MAC1=52:54:00:12:34:00
MAC2=52:54:00:12:34:02

## below, ssh-keys-list is from curtin/tools
## it just dumps user's publich ssh keys in cloud-config format.
cat >${USERDATA} << EOF
#cloud-config
password: passw0rd
chpasswd: { expire: False }
ssh_pwauth: True
${LPID:+ssh_import_id: $LPID}
$(command -v ssh-keys-list >/dev/null 2>&1 || exit 0; ssh-keys-list cloud-config)
EOF

if [ "$mode" = "bond" ]; then
    cat >${NETWORK_CONFIG} << EOF
version: 1
config:
  - type: physical
    mac_address: '$MAC1'
    name: interface0
  - type: physical
    mac_address: '$MAC2'
    name: interface1
  - type: bond
    name: bond0
    bond_interfaces:
      - interface0
      - interface1
    params:
      bond_miimon: 100
      bond_mode: 802.3ad
      bond_xmit_hash_policy: layer3+4
    subnets:
      - type: static
        address: 10.0.2.15/24
        gateway: 10.0.2.1
  - type: nameserver
    address: 10.0.2.3
EOF
elif [ "$mode" = "vlan" ]; then
    cat >${NETWORK_CONFIG} << EOF
version: 1
config:
  - type: physical
    mac_address: '$MAC1'
    name: interface0
  - type: physical
    mac_address: '$MAC2'
    name: interface1
    subnets:
      - type: static
        address: 10.0.2.15/24
        gateway: 10.0.2.1
  - type: vlan
    name: interface1.108
    vlan_id: '108'
    vlan_link: interface1
    subnets:
      - type: static
        address: 65.61.151.38
        netmask: 255.255.255.252
  - type: nameserver
    address: 10.0.2.3
EOF
elif [ "$mode" = "bond-vlan" ]; then
    cat >"${NETWORK_CONFIG}" <<EOF
version: 1
config:
  - type: physical
    mac_address: '$MAC1'
    name: interface0
  - type: physical
    mac_address: '$MAC2'
    name: interface1
  - type: bond
    name: bond0
    bond_interfaces:
      - interface0
      - interface1
    params:
      bond_miimon: 100
      bond_mode: 802.3ad
      bond_xmit_hash_policy: layer3+4
    subnets:
      - type: static
        address: 10.0.2.15/24
        gateway: 10.0.2.1
  - type: vlan
    name: bond0.108
    vlan_id: '108'
    vlan_link: bond0
    subnets:
      - type: static
        address: 65.61.151.38
        netmask: 255.255.255.252
EOF
else
   echo "unknown mode: $mode (bond, vlan, bond-vlan)"
   exit
fi
echo "instance-id: $(uuidgen || echo i-abcdefg)" > "$METADATA"
echo "Creating seed..."
cloud-localds -N ${NETWORK_CONFIG} ${SEED} ${USERDATA} "$METADATA"

qemu-system-x86_64 -m 1024 --enable-kvm \
  -snapshot \
  -drive file=$BOOT,format=qcow2,if=virtio \
  -drive file="$SEED,format=raw,if=virtio" \
  -net user,hostfwd=tcp::${REDIR_PORT}-10.0.2.15:22 \
  -net nic,model=virtio,macaddr=$MAC1 \
  -net nic,model=virtio,macaddr=$MAC2 \
  -nographic -echr 0x05

#xkvm --dry-run \
#   "--disk=file=${BOOT}" "--disk=$SEED" \
#   "--netdev=user,macaddr=$MAC1,hostfwd=tcp::2222-10.0.2.15:22" \
#   "--netdev=user,macaddr=$MAC2" \
#   -- -m 1024 -nographic -snapshot -echr 0x05
