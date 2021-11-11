cd (dirname (status -f))
cd ../

[ ! -d "$DESTDIR" ]; and echo "No such directory: $DESTDIR"
[ ! -d "$DESTDIR" ]; and exit

mkdir -p $DESTDIR/usr $DESTDIR/usr/share $DESTDIR/usr/share/xsessions
cp xsessions/unityx.desktop $DESTDIR/usr/share/xsessions

mkdir -p $DESTDIR/usr/share/applications
cp applications/* $DESTDIR/usr/share/applications

mkdir -p $DESTDIR/usr/share/unityx
cp -r ./*/ $DESTDIR/usr/share/unityx

rm -r $DESTDIR/usr/share/unityx/xsessions

rm -r $DESTDIR/usr/share/unityx/xfce4
cp unityx $DESTDIR/usr/share/unityx

sudo cp -r $DESTDIR/usr/share/unityx/Adwaita-dark-Xfce /usr/share/themes/
rm -r $DESTDIR/usr/share/unityx/Adwaita-dark-Xfce

gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark-Xfce"

sudo cp -r xfce4/ /etc/skel/
sudo chmod +x /usr/share/unityx/unityx
