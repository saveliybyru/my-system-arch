# dotfiles

pacman -S git foot neofetch

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

# Icon's & Cursor's

Скопировать все файлы с заменой из папки репозитория icons в папку .icons
распаковать в папку .icons архив Vector-Icons

pacman -S gnome-tweaks
