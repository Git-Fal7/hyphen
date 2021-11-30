#!/bin/sh


#check if full option is on
if [ "$1" = "-full" ]; then
 echo "Full option has enabled, replacing PKGBUILD"
 mv ./PKGBUILDFull ./PKGBUILD
 echo "done"
fi

mkdir hypheninstall
cd hypheninstall/

HOMEDIR=$(pwd)
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

cd ${HOMEDIR}
#tela-icon-theme
echo "installing tela-icon-theme"

if pacman -Qs tela-icon-theme > /dev/null; then
 echo "tela-icon-theme is installed, move on"
else
 echo "tela-icon-theme is not installed, installing it"
 echo "getting the pkgbuild of tela-icon-theme"
 git clone https://github.com/git-fal7/tela-icon-theme
 
 echo "installing, see the prompts"
 cd tela-icon-theme/
 sudo ./install.sh
 makepkg -si
 if pacman -Qs tela-icon-theme > /dev/null; then
  echo "tela-icon-theme has been installed, moving on"
 else
  echo "tela-icon-theme has not been installed, exiting"
  exit
 fi
fi

cd ${HOMEDIR}
#installing via yay
echo "all is good, now installing the aur packages via yay"
yay -S panther-launcher-git xfce4-docklike-plugin
echo "good, now installing"
cd ..
makepkg -si
echo "removing everything"
rm -rf hyphen
