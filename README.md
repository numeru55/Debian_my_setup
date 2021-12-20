# test environment

- MacBook Pro 15 Mid 2014 w/ Big Sur 11.6.1
- VMware Fusion Player 12.2.1
- debian-live-11.1.0-amd64-gnome.iso
- 128G SD card and reader

# install to USB media

https://qiita.com/numeru55/items/17b4196c550f2ecc4bd4

# setup WiFi driver for my mac

```bash
sudo apt-get update -y
sudo apt-get install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom-sta-dkms -y
sudo modprobe -r b44 b43 b43legacy ssb brcmsmac
sudo modprobe wl
```

# Thanks to...

- markdown edit
https://repositorymd.netlify.app/editor

- install
https://cpoint-lab.co.jp/article/202001/13627/
