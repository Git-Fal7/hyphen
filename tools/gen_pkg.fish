cd (dirname (status -f))
cd ../

[ ! -d "$DESTDIR" ]; and echo "No such directory: $DESTDIR"
[ ! -d "$DESTDIR" ]; and exit

sudo mkdir -p /usr/share/xsessions
sudo cp xsessions/unityx.desktop /usr/share/xsessions

sudo mkdir /usr/share/applications
sudo cp applications/* /usr/share/applications

sudo mkdir -p /usr/share/unityx
sudo cp -r ./*/ /usr/share/unityx

sudo rm -r /usr/share/unityx/xsessions

sudo cp unityx /usr/share/unityx

sudo cp -r ./config/xfce4/ ~/.config/
sudo cp -r ./config/Adwaita-dark-Xfce /usr/share/themes/
sudo cp -r ./config/Flat-Remix-Yellow-Dark /usr/share/icons/
sudo cp -r ./config/gtk-3.0 ~/.config/
sudo cp ./config/.gtkrc-2.0 ~/

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark-Xfce"
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Yellow-Dark"

sudo rm -r /usr/share/unityx/config

sudo chmod +x /usr/share/unityx/unityx
