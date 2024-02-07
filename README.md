# Simple Install System

# YAY
git clone https://aur.archlinux.org/yay.git 
cd yay  
makepkg -si 

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
