#!/bin/sh
sudo pkg install xorg
sudo sysrc dbus_enable="YES"
sudo echo 'proc /proc procfs rw 0 0' >> /etc/fstab