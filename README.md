# Hyphen Desktop
A Bunch of packages to make a lightweight desktop environment
Takes about ~300megs of ram in arch using the full pkgbuild, compared to full xfce ~500megs.
this would help for lower-end computers as the amount of processess are minimal.

> Current
![Screenshot](ss.png?raw=true)


# Installing
``git clone https://github.com/git-fal7/hyphen \
cd hyphen \
chmod +x ./install.sh \``

``./install.sh``
use -full for full version
if it returned an error because package maim-sh doesn't exist, run this then run install.sh again.
``git clone https://github.com/git-fal7/maim-sh \
cd maim-sh \ 
makepkg -si \
echo "done, it should be installed" \
cd ..``


# TODO (Most of them are only full version)
- -Replace Action Menu in panel for a logout launcher.- (xfce4-session-logout)
- -Add a dead simple screenshot.- (maim-sh)
- -Add a gui launcher for terminal cmds.- (gmrun)
- Use xdotool for panther_launcher.
- Modify keyboard settings.
  = remove xfce4-screenshot strokes for maim-sh
  = remove xfce4-appfinder strokes for gmrun
- -Modify lightdm-gtk-greeter config settings in full version.- (Full version)
- -Add lightdm-gtk-greeter-settings for modifying lightdm-gtk-greeter.- (Full version)
- -Make a bunch of backgrounds, i guess.- (gnome-backgrounds)
- -Add a terminal, anything would work really.- (xfce4-terminal)
