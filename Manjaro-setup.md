Now testing...


Wifi Driver

https://archived.forum.manjaro.org/t/solved-installation-on-macbook-air-wifi/134405/9

https://forum.manjaro.org/t/wireless-drivers-broadcom-wl-dkms-as-part-of-live-usb-image-default-manjaro-installation/45899


pool

```bash
# try 1
sudo pacman -Syyu linux54-broadcom-wl
# try 2
sudo pacman -Syy
sudo pacman -S $(pacman -Qsq "^linux" | grep "^linux[0-9]*[-rt]*$" | awk '{print $1"-headers"}' ORS=' ')
```
