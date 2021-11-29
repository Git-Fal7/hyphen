#!/bin/sh


mkdir hypheninstall
cd hypheninstall/

HOMEDIR=$(dirname (status -f))
echo "please upgrade all your packages, building stuff is weird"
sudo pacman -Syu

echo "checking if yay is installed"

#yay
if pacman -Qs yay > /dev/null; then
 echo "yay is installed, move on"
else
 echo "yay is not installed, installing it"
 echo "getting the pkgbuild of yay"
 git clone https://aur.archlinux.org/yay
 
 echo "installing, see the prompts"
 cd yay/
 makepkg -si
 if pacman -Qs yay > /dev/null; then
  echo "yay has been installed, moving on"
 else
  echo "yay has not been installed, exiting"
  exit
 fi
fi

#lxpolkit
cd ${HOMEDIR}
echo "nows lxpolkit for polkit gui"
if pacman -Qs lxpolkit > /dev/null; then
 echo "lxpolkit is installed, move on"
else
 echo "lxpolkit is not installed, installing it"
 echo "getting the pkgbuild of lxpolkit"
 git clone https://github.com/git-fal7/lxpolkit
 
 echo "installing, see the prompts"
 cd lxpolkit/
 makepkg -si
 if pacman -Qs lxpolkit > /dev/null; then
  echo "lxpolkit has been installed, moving on"
 else
  echo "lxpolkit has not been installed, exiting"
  exit
 fi
fi

#xfce4-session-lxpolkit
cd ${HOMEDIR}
echo "installing xfce4-session-lxpolkit"

if pacman -Qs xfce4-session-lxpolkit > /dev/null; then
 echo "xfce4-session-lxpolkit is installed, move on"
else
 echo "xfce4-session-lxpolkit is not installed, installing it"
 echo "getting the pkgbuild of xfce4-session-lxpolkit"
 git clone https://github.com/git-fal7/xfce4-session-lxpolkit
 
 echo "installing, see the prompts"
 cd xfce4-session-lxpolkit/
 makepkg -si
 if pacman -Qs xfce4-session-lxpolkit > /dev/null; then
  echo "xfce4-session-lxpolkit has been installed, moving on"
 else
  echo "xfce4-session-lxpolkit has not been installed, exiting"
  exit
 fi
fi
