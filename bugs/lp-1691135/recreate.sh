#!/bin/sh
cat > net-eth1.cfg <<"EOF"
DEVICE='eth1'
PROTO='static'
IPV4ADDR='10.0.0.2'
IPV4BROADCAST='10.0.0.255'
IPV4NETMASK='255.255.255.0'
IPV4GATEWAY='10.0.0.1'
IPV4DNS0='10.0.1.1'
IPV4DNS1='0.0.0.0'
HOSTNAME='foohost'
UPTIME='21'
DHCPLEASETIME='3600'
DOMAINSEARCH='foo.com'
EOF

python3 -c '
import yaml
from cloudinit.net import cmdline;
cfg = cmdline.config_from_klibc_net_cfg(["net-eth1.cfg"])
print(yaml.dump(cfg))
' > net-eth1.yaml

if [ ! -e net-convert.py ]; then
    wget https://git.launchpad.net/~cloud-init-dev/cloud-init/plain/tools/net-convert.py -O net-convert.py
fi

for fmt in eni netplan; do
   outd="./out-$fmt.d/"
   echo "---- $fmt -> $outd ----"
   rm -Rf "$outd"
   python3 ./net-convert.py \
      --network-data=net-eth1.yaml --kind=yaml "--output-kind=$fmt" \
      "--directory=$outd"
done

echo === eni: /etc/network/interfaces ===
cat out-eni.d/etc/network/interfaces
echo

echo === netplan: /etc/netplan/50-cloud-init.yaml ===
cat out-netplan.d/etc/netplan/50-cloud-init.yaml
