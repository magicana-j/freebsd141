#!/bin/sh
sudo pkg install -y vim nano neovim htop fastfetch
sudo pkg install -y drm-kmod libva-intel-driver mesa-libs mesa-dri
sudo pkg install -y pavucontrol alsa-utils

echo Setting SystemControl.
sleep 2
sudo sysrc kld_list+=i915kms
sudo pw groupmod video -m user
sudo sysctl net.local.stream.recvspace=65536
sudo sysctl net.local.stream.sendspace=65536
