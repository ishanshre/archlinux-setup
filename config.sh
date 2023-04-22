#!/bin/bash

echo "+++++++++++++Configuring location+++++++++++++"
ln -sf /usr/share/zoneinfo/Asia/Kathmandu /etc/localtime
hwclock --systohc
echo "+++++++++++++setting en_US.UTF-8 as local language+++++++++++++"
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "+++++++++++++setting hostname+++++++++++++"
echo "archNepal" >> /etc/hostname
echo "+++++++++++++setting hosts+++++++++++++"
echo "127.0.0.1			localhost
		::1					localhost
		127.0.1.1			archNepal.localdomain			archNepal" >> /etc/hosts
echo "+++++++++++++Installing grub,network,audio,wifi,cups and bluetooth+++++++++++++"
pacman -S grub efibootmgr network-manager-applet dialog  wpa_supplicant  mtools dosfstools base-devel linux-headers bluez bluez-utils cups xdg-user-dirs pipewire pipewire-alsa pipewire-jack pipewire-pulse alsa-utils gvfs
echo "+++++++++++++Configuring Grub"
grub-install --target=x86_64-efi efi-directory=/boot/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
echo "+++++++++++++Enabling services at start+++++++++++++"
systemctl enable NetworkManager.service
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable fstrim.timer
echo "+++++++++++++Exiting+++++++++++++"

