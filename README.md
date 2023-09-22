# dotfiles

pacman -S git foot neofetch micro wl-clipboard xdg-utils mailcap

# YAY
git clone https://aur.archlinux.org/yay.git 
cd yay  
makepkg -si 

# FISH
pacman -S fish
chsh -s /usr/bin/fish
set -U fish_greeting

Скопировать все файлы с заменой из папки репозитория config  в папку .config

sudo nano /etc/pacman.conf

Color (uncomment)

# Bluetooth

pacman -S bluez bluez-utils bluez-libs btusb blueman

systemctl enable bluetooth.service

systemctl start bluetooth.service

# Icon's & Cursor's

Скопировать все файлы с заменой из папки репозитория icons в папку .icons

распаковать в папку .icons архив Vector-Icons

pacman -S gnome-tweaks
