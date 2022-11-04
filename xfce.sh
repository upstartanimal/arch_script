#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

sudo reflector -c "United States" -a 12 --sort rate --save /etc/pacman.d/mirrorlist

sudo firewall-cmd --add-port=1025-65535/tcp --permanent
sudo firewall-cmd --add-port=1025-65535/udp --permanent
sudo firewall-cmd --reload

git clone https://aur.archlinux.org/pikaur.git
cd pikaur/
makepkg -si --noconfirm

#pikaur -S --noconfirm system76-power
#sudo systemctl enable --now system76-power
#sudo system76-power graphics integrated
#pikaur -S --noconfirm gnome-shell-extension-system76-power-git
#pikaur -S --noconfirm auto-cpufreq
#sudo systemctl enable --now auto-cpufreq

sudo pacman -S xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xfce4 xfce4-goodies firefox simplescreenrecorder arc-gtk-theme arc-icon-theme obs-studio vlc xorg-xinit xorg-server xorg-xauth xorg-xrandr libusb usbutils cowsay rust nvidia nvidia-utils nvidia-settings nvtop btrfs-progs exfat-utils nfs-utils ntfs-3g  alacritty notepadqq adobe-source-serif-fonts adobe-source-sans-fonts gnu-free-fonts noto-fonts noto-fonts-extra noto-fonts-emoji ttf-jetbrains-mono ttf-roboto ttf-roboto-mono htop tmux which grep bat lshw make virtualbox libvirt libreoffice-fresh-de archlinux-wallpaper pacutils pacman-mirrorlist pacman-contrib audacity gimp inkscape pcmanfm bluez bluez-utils blueman git curl wget deja-dup grub-btrfs firewalld nvidia nvidia-utils nvidia-settings xorg-server-devel opencl-nvidia nvidia-prime lib32-nvidia-utils lib32-opencl-nvidia

git clone https://aur.archlinux.org/libpamac-aur
cd libpamac-aur
makepkg -si --noconfirm

git clone https://aur.archlinux.org/jdk
cd jdk
makepkg -si --noconfirm

git glone https://aur.archlinux.org/packages/eclipse-java
cd eclipse-java
makepkg -si --noconfirm

git clone https://aur.archlinux.org/packages/timeshift
cd timeshift
makepkg -si --noconfirm

git clone https://aur.archlinux.org/packages/paru
cd paru
makepkg -si --noconfirm

git clone https://aur.archlinux.org/packages/ocs-url
cd ocs-url
makepkg -si --noconfirm

git clone https://aur.archlinux.org/packages/alacritty-themes
cd alacritty-themes
makepkg -si --noconfirm

sudo systemctl enable lightdm
/bin/echo -e "\e[1;32mREBOOTING IN 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot
