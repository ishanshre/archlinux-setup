#!/bin/bash

echo "Configuring location"
ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
hwclock --systohc

locale-gen

echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "archNepal" >> /etc/hostname
echo "127.0.0.1			localhost
		::1					localhost
		127.0.1.1			archNepal.localdomain			archNepal" >> /etc/hosts

pacman -S grub efibootmgr network-manager-applet dialog  wpa_supplicant  mtools dosfstools base-devel linux-headers bluez bluez-utils cups xdg-user-dirs pipewire pipewire-alsa pipewire-jack pipewire-pulse alsa-utils gvfs
grub-install --target=x86_64-efi efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable NetworkManager.service
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable fstrim.timer

