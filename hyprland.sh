#!/bin/bash
echo "+++++++++++++Installing hyprland and sddm+++++++++++++"
paru -S hyprland-git polkit-kde-agent dunst grimblast rofi rofi-emoji wl-clipboard wf-recorder wlogout grimblast-git hyprpicker-git hyprpaper-git xdg-desktop-portal-hyprland-git ffmpegthumbnailer tumbler wtype colord imagemagick swaylock-effects qt5-wayland qt6-wayland ripgrep waybar-hyprland-git sddm-git
echo "+++++++++++++Enabling sddm+++++++++++++"
sudo systemctl enable sddm
echo "+++++++++++++Exiting+++++++++++++"