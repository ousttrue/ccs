srcPackage {
    name="gdk-pixbuf",
    version="2.22.0",
    host="i686-pc-cygwin",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/gdk-pixbuf/2.22/gdk-pixbuf-2.22.0.tar.bz2"
    },
    depends={
        "libpng", "libjpeg",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gdk-pixbuf-2.22.0.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --without-libtiff
fixlibtool
find . -name Makefile | xargs perl -i.bak -pe 's/\x01/ /g'
make install -j4
    ]=],
}
