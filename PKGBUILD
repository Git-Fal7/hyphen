pkgname="hyphen"
pkgver=1.0
pkgrel=1
pkgdesc="A 'DE'"
arch=(any)
depends=("xfdesktop" "xfwm4" "pavucontrol" "network-manager-applet" "xfce4-pulseaudio-plugin" "xdotool"
"notify-osd" "xfce4-panel" "xfce4-whiskermenu-plugin" "xfce4-docklike-plugin")
license=("GPL")
source=('hyphen::git+https://github.com/git-fal7/hyphen.git')
sha256sums=('SKIP')

package() {
  cd "${srcdir}/hyphen"
  DESTDIR="${pkgdir}" fish ./tools/gen_pkg.fish
}
