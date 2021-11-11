pkgname="unityx"
pkgver=10.0.rc5.r5
pkgrel=1
pkgdesc="A modern and functional DE"
arch=(any)
depends=("nemo" "bash" "fish" "python3" "python-gobject" "libkeybinder3" "nitrogen" "xfwm4" "zenity" 
"pavucontrol" "network-manager-applet" "glib2" "xfce4-pulseaudio-plugin" "xdotool"
"notify-osd" "arandr" "xorg-server-xephyr" "plotinus-unityx-git" "valapanel-appmenu-xfce" "xfce4-panel" "python-yaml"
"xfce4-whiskermenu-plugin" "xfce4-docklike-plugin")
makedepends=("xorg-server-xephyr")
license=("GPL")
source=('unityx::git+https://github.com/git-fal7/unityx.git')
sha256sums=('SKIP')

package() {
  cd "${srcdir}/unityx"
  DESTDIR="${pkgdir}" fish ./tools/gen_pkg.fish
}
