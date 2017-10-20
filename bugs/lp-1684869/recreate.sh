#!/bin/sh
rel=${1}

fail() { echo "$@" 1>&2; exit 1; }

set -e
./get-proposed-cloudimg "$rel"

raw=$(echo $rel-*.raw)
[ -f "$raw" ] || { echo "no $rel-*.raw ($raw)"; exit 1; }
proposed="${raw%.*}-proposed.img"

[ -f "$proposed" ] || fail "no proposed: $proposed?"

out=$(sfdisk --part-uuid "$raw" 1)
ptuuid=$(echo "$out" | tr '[a-z]' '[A-Z]')

echo "ptuuid on $raw = $ptuuid"

printf "%s\n%s\n%s\n%s\n" "#cloud-config" "password: passw0rd" \
        "chpasswd: {expire: False}" "ssh_pwauth: True" > my-user-data

echo "instance-id: $(uuidgen || echo i-abcdefg)" > my-meta-data
cloud-localds my-seed.img my-user-data my-meta-data

sudo mount-image-callback "$raw" -- \
    mchroot sh -xc 'cat /boot/vmlinu?-*' > "$rel-kernel"


qemu-img create -f qcow2 -b "$proposed" $rel-disk.img 10G

# uses ide because LP: #1685291
qemu-system-x86_64 -enable-kvm \
       -drive "file=$rel-disk.img,if=ide,index=0" \
       -drive file=my-seed.img,if=ide \
       -net nic -net user,hostfwd=tcp::2222-:22 \
       -snapshot -m 768 -nographic -echr 0x05 \
       -kernel "$rel-kernel" \
       -append "root=PARTUUID=${ptuuid} ro console=tty1 console=ttyS0"

