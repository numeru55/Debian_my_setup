# test environment

- MacBook Pro 15 Mid 2014 w/ Big Sur 11.6.1
- VMware Fusion Player 12.2.1
- debian-live-11.1.0-amd64-gnome.iso
- 128G SD card and reader

# install to USB media

https://qiita.com/numeru55/items/17b4196c550f2ecc4bd4

## Partitioning

- Boot a new guest in UEFI mode, with debian live iso and NO HDD, using VMware.
- Connect USB media.

- Execute Debian installer and make a partition as follows to the media for example:

```
sda      116.5G   
├─sda1   200M    fat32 # /boot/efi
└─sda2   116.3G  ext4  # /
```

## Fix boot area

- Quit the installer. And then mount the media using debian live:

```bash
mkdir efi
sudo mount /dev/sda1 efi
sudo mkdir -p efi/EFI/BOOT
```

- Install `grub-efi-amd64-bin` to the Debian live, create `BOOTx64.EFI`, and copy it.

```bash
sudo apt install grub-efi-amd64-bin
grub-mkimage -d /usr/lib/grub/x86_64-efi/ -o BOOTx64.EFI -O x86_64-efi -p "" part_gpt part_msdos ntfs ntfscomp hfsplus fat ext2 normal chain boot configfile linux multiboot
sudo cp BOOTx64.EFI efi/EFI/BOOT/
sudo cp -r /usr/lib/grub/x86_64-efi efi/EFI/BOOT/
```

- Copy other files:

```bash
mkdir usb-debian
sudo mount /dev/sda2 usb-debian
sudo cp -R usb-debian/boot/grub/* efi/EFI/BOOT/
```

- Unmount the media.
 
```bash
sudo umount efi
sudo umount usb-debian
```

Then, my mac can boot the media.

# setup WiFi driver for my mac

```bash
sudo apt-get update -y
sudo apt-get install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms -y
sudo modprobe -r b44 b43 b43legacy ssb brcmsmac
sudo modprobe wl
```

## for ubuntu...

```bash
sudo apt install bcmwl-kernel-source
```

# Thanks to...

- markdown edit
https://repositorymd.netlify.app/editor

- install

https://cpoint-lab.co.jp/article/202001/13627/

https://bellbind.tumblr.com/post/45757405213/usb-hdd%E3%81%ABmbrefi%E4%B8%A1%E3%83%96%E3%83%BC%E3%83%88%E5%8F%AF%E8%83%BD%E3%81%AAubuntu%E3%82%A4%E3%83%A1%E3%83%BC%E3%82%B8%E3%82%92%E4%BD%9C%E3%82%8B%E6%96%B9%E6%B3%95

- Github Desktop

https://github.com/shiftkey/desktop/releases
