pkgname="hyphen-de"
pkgver=1.0
pkgrel=1
pkgdesc="A 'DE'"
arch=(any)
depends=("xfdesktop" "xfwm4" "network-manager-applet" "xfce4-pulseaudio-plugin" "xfce4-panel" "xfce4-whiskermenu-plugin" 
"xfce4-docklike-plugin" "xfce4-settings" "xfce4-session-lxpolkit" "xdotool" "notify-osd" "xfce4-screensaver")
license=("GPL")
source=('hyphen::git+https://github.com/git-fal7/hyphen.git')
sha256sums=('SKIP')

package() {
  cd "${srcdir}/hyphen"
  DESTDIR="${pkgdir}" fish ./tools/gen_pkg.fish
}
