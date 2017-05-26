paths="/lib/systemd/systemd-fsck@.service /lib/systemd/system/swap.target"
for p in $paths; do
   mkdir -p ${p}.d/
   fpath="$p.d/cloud-init.conf"
   echo "$fpath"
   cat > "$fpath" <<EOF
[Unit]
After=cloud-init.service
EOF
done
