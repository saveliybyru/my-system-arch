# dotfiles

pacman -S git foot neofetch nnn

# YAY
git clone https://aur.archlinux.org/yay.git 
cd yay  
makepkg -si 

# FISH
pacman -S fish
chsh -s /usr/bin/fish
set -U fish_greeting

Скопировать все файлы с заменой из репозитория в папку .config

sudo nano /etc/pacman.conf

Color (uncomment)
