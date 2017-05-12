#!/bin/bash
set -e
rel=${1:-xenial}
ftype=${2}
if [ -z "$ftype" ]; then
  case "$rel" in
    precise|trusty) ftype="-root.tar.xz";;
    *) ftype=".squashfs";;
  esac
fi
name="rooturl-$rel"

which cloud-localds >/dev/null || missing="cloud-image-utils"
which lxc >/dev/null || missing="${missing} lxc"
[ -z "$missing" ] ||
   { echo "Please apt-get install -qy $missing"; exit 1; }

mkdir -p $rel

if ! [ -e "$rel/kernel" -a -e "$rel/initrd" ]; then
lxc launch ubuntu-daily:$rel "$name"
trap "lxc delete --force $name" EXIT
lxc exec "$name" -- sh -s <<"EOF"
set -e
while [ ! -e /run/cloud-init/result.json ]; do
   echo -n .
   sleep 1
done
# precise initramfs does not get squashfs by default (LP: #1501834).
case "$(lsb_release -sc)" in
   precise)
      echo manual_add_modules squashfs > /etc/initramfs-tools/hooks/squashfs;;
esac
#add-apt-repository -y ppa:smoser/cloud-initramfs-tools

# add proposed
rel=$(lsb_release -sc)
line=$(awk '$1 == "deb" && $2 ~ /ubuntu.com/ {
  printf("%s %s %s-proposed main universe\n", $1, $2, rel); exit(0) };
  ' "rel=$rel" /etc/apt/sources.list)
echo "$line" | sudo tee /etc/apt/sources.list.d/proposed.list

apt-get update -q 
apt-get install -qy cloud-initramfs-rooturl linux-image-virtual </dev/null
cd /tmp
for i in /boot/vmlinu?-*; do
  [ -f "$i" -a "${i%.signed}" != "$i" ] || continue
done
cp $i kernel
for i in /boot/initrd.*; do
  [ -f "$i" ] || continue
done
cp $i initrd
EOF
lxc file pull $name/tmp/kernel $rel/kernel
lxc file pull $name/tmp/initrd $rel/initrd
fi

burl="http://cloud-images.ubuntu.com/daily/server"
file="$rel-server-cloudimg-amd64${ftype}"
cd $rel
if ! [ -e "$file" ]; then
   wget "$burl/$rel/current/$file" -O "$file.tmp"
   mv "$file.tmp" "$file"
fi

if [ ! -e "user-data" ]; then
    cat > "user-data" <<EOF
#cloud-config
password: passw0rd
chpasswd: { expire: False }
ssh_pwauth: True

runcmd:
 - ['sh', '-c', 'echo ====================================']
 - ['sh', '-c', 'echo === /proc/mounts ===; cat /proc/mounts']
 - ['sh', '-c', 'echo === /proc/cmdline === ; cat /proc/cmdline']
 - ['sh', '-c', 'echo === df -h ===; df -h']
 - ['sh', '-c', 'echo === free ===; free']
 - ['sh', '-c', 'echo ====================================']
 - ['sh', '-c', '( sleep 10 ; poweroff )</dev/null >/dev/null 2>&1 &']
EOF
fi

if [ ! -e "meta-data" ]; then
   echo "instance-id: $(uuidgen || echo i-abcdefg)" > "meta-data"
fi

# trusty's initramfs built from linux-virtual did not have
# vfat or iso9660 support, so  instead we use the ds=nocloud-netn
# on the command line.
#if [ ! -e "seed.img" ]; then
#   cloud-localds seed.img user-data meta-data
#fi

if [ ! -x webserv ]; then
python=python3
which python3 >/dev/null || python=python
echo "#!/usr/bin/env $python" > webserv
cat >>webserv <<"EOF"
# python2 or python3 web server.
# Usage: webserv [port [dir]]
#  run a webserver serving 'dir' at root on 'port'
#   
#  port defaults to 8000
#  dir defaults to current dir.
import os, socket, sys
try:
    from BaseHTTPServer import HTTPServer
    from SimpleHTTPServer import SimpleHTTPRequestHandler
except ImportError:
    from http.server import HTTPServer, SimpleHTTPRequestHandler

class HTTPServerV6(HTTPServer):
    address_family = socket.AF_INET6

if __name__ == "__main__":
    port = 8000
    if len(sys.argv) > 1:
        port = int(sys.argv[1])
    if len(sys.argv) > 2:
        dir = sys.argv[2]
        os.chdir(dir)
    server = HTTPServerV6(("::", port), SimpleHTTPRequestHandler)
    server.serve_forever()
EOF
chmod 755 webserv
fi

port=9999
cat > "boot" <<EOF
#!/bin/sh
file=\${1:-"${file}"}
port=\${2:-${port}}
EOF
cat >> "boot" <<"EOF"
burl="http://10.0.2.2:${port}"
cmdline="root=$burl/$file console=ttyS0"
cmdline="${cmdline} rootflags=size=75%"
cmdline="${cmdline} ds=nocloud-net;seedfrom=$burl/"
case "$file" in
   *squashfs) cmdline="${cmdline} overlayroot=tmpfs";;
esac

./webserv $port &
kid=$!
trap "kill -9 $kid" EXIT

set -x
qemu-system-x86_64 -enable-kvm \
  -device virtio-net-pci,netdev=net00 \
  -netdev type=user,id=net00 \
  -m 1G -nographic \
  -kernel kernel -initrd initrd \
  -append "$cmdline"
EOF
chmod 755 "boot"

cat <<EOF
Now, do:
   cd $rel
   ./boot
EOF

#lxc launch ubuntu-daily:$rel rooturl-$rel
#lxc exec rooturl-$rel -- sh -c <my.file
