sudo mkdir /mnt/hgfs
sudo vmhgfs-fuse -o allow_other -o auto_unmount .host:/ /mnt/hgfs
