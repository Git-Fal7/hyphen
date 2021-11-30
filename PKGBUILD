pkgname="hyphen-desktop"
pkgver=1.0
pkgrel=1
pkgdesc="A 'DE'"
arch=(any)
depends=("xfdesktop" "xfwm4" "network-manager-applet" "xfce4-pulseaudio-plugin" "xfce4-panel" "pavucontrol" "panther-launcher-git"
"xfce4-docklike-plugin" "xfce4-settings" "xfce4-session-lxpolkit" "xdotool" "notify-osd" "xfce4-screensaver" "tela-icon-theme" "file-roller" "thunar-archive-plugin")
license=("GPL")
source=('hyphen::git+https://github.com/git-fal7/hyphen.git')
sha256sums=('SKIP')

package() {
  cd "${srcdir}/hyphen"
  cp -r xfce4/ ~/.config/
}
