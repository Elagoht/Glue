# Maintainer: Furkan Baytekin (Elagoht) <furkanbaytekin@gmail.com>
# Maintainer: Enes Baytekin <enesbaytekin38@gmail.com>
name='glue'
version=1.0
release=1
desc='Alignable paste alternative commandline utility.'
architectures=('amd64')
homepage='https://github.com/Elagoht/Glue'
license=('GPLv3')
provides=('sudo-mice')
deps=('python3')
version() {
  printf "$version"
}
package() {
    curl https://raw.githubusercontent.com/Elagoht/Glue/master/glue -o glue
    chmod -v +x glue
    install -d "$pkgdir/usr/bin/"
    install -Dm644 "glue" -t "$pkgdir/usr/bin"
    rm glue
}
