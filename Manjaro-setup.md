Now testing...


# Wifi Driver for my mac

https://archived.forum.manjaro.org/t/solved-installation-on-macbook-air-wifi/134405/9

https://forum.manjaro.org/t/wireless-drivers-broadcom-wl-dkms-as-part-of-live-usb-image-default-manjaro-installation/45899


https://forum.manjaro.org/t/macbook-pro-wont-detect-or-connect-to-wifi-bcm4322/46060/3

pool

```bash
# try 1
sudo pacman -Syyu linux54-broadcom-wl
# try 2
sudo pacman -Syy
sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')

# try 3

sudo pacman -Sy broadcom-wl-dkms
sudo modprobe wl

# Usually when you use the above commands - it should work, but for me I got an error -

#    " modprobe: FATAL: Module wl not found in directory /lib/modules/5.4.89-1-MANJARO"

#you would have to install linux headers, I have 5.4 and 5.10 kernels, so I have installed corresponding linux headers again.

sudo pacman -Sy linux510-headers
sudo pacman -Sy linux54-headers
```

# Setup Japanese

https://qiita.com/oioi/items/8835afc5d2db643efeda

