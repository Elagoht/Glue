# Maintainer: Furkan Baytekin (Elagoht) <furkanbaytekin@gmail.com>
name='glue'
version=1.0
release=1
desc='Alignable paste alternative commandline utility.'
architectures=('all')
homepage='https://github.com/Elagoht/Glue'
license=('GPLv3')
provides=('glue')
deps=('python3')
version() {
  printf "$version"
}
package() {
    curl https://raw.githubusercontent.com/Elagoht/Glue/master/glue -o glue
    chmod -v +x glue
    install -d "$pkgdir/usr/bin/"
    install -Dm755 "glue" -t "$pkgdir/usr/bin"
    rm glue
}
