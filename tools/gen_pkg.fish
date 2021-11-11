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

sudo rm -r /usr/share/unityx/xfce4
sudo cp unityx /usr/share/unityx

sudo cp -r /usr/share/unityx/Adwaita-dark-Xfce /usr/share/themes/
sudo rm -r /usr/share/unityx/Adwaita-dark-Xfce

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark-Xfce"

sudo cp -r xfce4/ /etc/skel/
sudo chmod +x /usr/share/unityx/unityx
