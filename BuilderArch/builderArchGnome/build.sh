#!/bin/bash




echo '========Start Install========'

parentDir=$(cd $(dirname "$0"); pwd)
echo '========Copy Files========'
if [ -d $HOME/inst/ ]; 
then rm -R $HOME/inst/
fi 

mkdir $HOME/inst/
mkdir $HOME/inst/listpkg/
cp $parentDir/pacmanpkg-list.txt $HOME/inst/listpkg/pacmanpkg-list.txt
cp $parentDir/otherpkg-list.txt $HOME/inst/listpkg/otherpkg-list.txt
mkdir $HOME/inst/hooks/

cd $parentDir/..
cp gen-otherlistpkg.hook $HOME/inst/hooks/gen-otherlistpkg.hook
sudo cp gen-otherlistpkg.hook /usr/share/libalpm/hooks/gen-otherlistpkg.hook
cp gen-pacmanlistpkg.hook $HOME/inst/hooks/gen-pacmanlistpkg.hook
sudo cp gen-pacmanlistpkg.hook /usr/share/libalpm/hooks/gen-pacmanlistpkg.hook

echo '=======Install packages==========='

#pacman -S --needed - < $HOME/inst/listpkg/pacmanpkg-list.txt 

echo '==========Setup Locale Settings=========='

# echo 'en_US.UTF8' > /etc/locale.gen
# echo 'ru_RU.UTF8' > /etc/locale.gen
# locale-gen
# ln -sf /usr/share/zoneinfo/Europe/Moscow /etc/localtime

echo '==============Copy Config Files============'

# if [ -d $HOME/.icons/ ]; 
# then rm -R $HOME/.icons/
# fi 

# mkdir $HOME/.icons/
# cp $parentDir/../icons/* $HOME/.icons/*


# if [ -d $HOME/.config/ ]; then 
# cp $parentDir/../config/* $HOME/.config/*
# else mkdir $HOME/.config/
# cp $parentDir/../config/* $HOME/.config/*
# fi

echo 'Final!'