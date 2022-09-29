name='ssh-tools'
version=1.7
release=1
desc='collection of various tools using ssh'
homepage='https://github.com/vaporup/ssh-tools'
architectures=('all')
license=('GPLv3')

deps=('openssh-client')
deps_arch=('openssh')
deps_opensuse=('openssh')

sources=("https://github.com/vaporup/${name}/archive/v${version}.tar.gz")
checksums=('c96dd7d4630dff0afdce597e0d254abc2a5ae87d3c3ba6e83af952713db6c961')

package() {

    cd $name-$version
    mkdir -p "${pkgdir}/usr/bin/"
    cp ssh-* "${pkgdir}/usr/bin/"

}
