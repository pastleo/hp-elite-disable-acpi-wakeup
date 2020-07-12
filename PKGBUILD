# Maintainer: PastLeo <chgu82837@gmail.com>
pkgname=hp-elite-disable-acpi-wakeup
pkgver=1
pkgrel=1
pkgdesc="disable acpi wakeup for HP EliteBook 1020 G2"
arch=('x86_64')
depends=('bash')
source=(
	"disable-acpi-wakeup.sh"
	"disable-acpi-wakeup.service"
)

md5sums=(
	"b2f0cb9860ebddf7b088e56d73d2af8c"
	"a3df77eecc834aa1c38497d479c64852"
)

package() {
	mkdir -p "$pkgdir/usr/bin/"
	mkdir -p "$pkgdir/usr/lib/systemd/system"
	install -Dm755 "$srcdir/disable-acpi-wakeup.sh" "$pkgdir/usr/bin/disable-acpi-wakeup"
	install -Dm644 "$srcdir/disable-acpi-wakeup.service" "$pkgdir/usr/lib/systemd/system/disable-acpi-wakeup.service"
}
