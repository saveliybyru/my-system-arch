#!/bin/bash



parentDir=$(cd $(dirname "$0"); pwd)

rm -R $HOME/inst/

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

#pacman -S --needed - < $HOME/inst/listpkg/pacmanpkg-list.txt




echo 'Final!'