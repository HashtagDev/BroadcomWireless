#!/bin/bash
sudo dpkg -i b43-fwcutter*
tar xvfj broadcom-wl-5.100.138.tar.bz2
sudo b43-fwcutter -w /lib/firmware broadcom-wl-5.100.138/linux/wl_apsta.o
sudo modprobe -r b43 bcma
sudo modprobe -r brcmsmac bcma
sudo modprobe b43
