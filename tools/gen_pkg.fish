cd (dirname (status -f))/..

[ ! -d "$DESTDIR" ]; and echo "No such directory: $DESTDIR"
[ ! -d "$DESTDIR" ]; and exit

mkdir -p $DESTDIR/usr $DESTDIR/usr/share $DESTDIR/usr/share/xsessions
cp xsessions/unityx.desktop $DESTDIR/usr/share/xsessions

mkdir -p $DESTDIR/usr/share/applications
cp applications/* $DESTDIR/usr/share/applications

mkdir -p $DESTDIR/usr/share/unityx
cp -r ./*/ $DESTDIR/usr/share/unityx; and \
  rm -r $DESTDIR/usr/share/unityx/xsessions
cp unityx $DESTDIR/usr/share/unityx

sudo cp -r xfce4/ /etc/skel/
