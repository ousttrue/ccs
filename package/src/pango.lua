srcPackage {
    name="pango",
    version="1.28.0",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/pango/1.28/pango-1.28.0.tar.bz2"
    },
    depends={
        "fontconfig", "glib", "cairo",
    },
    sh=[=[
set -x
export LDFLAGS="`pkg-config --libs glib-2.0` `pkg-config --libs gobject-2.0` $LDFLAGS"
export CFLAGS="`pkg-config --cflags glib-2.0` `pkg-config --cflags gobject-2.0` $CFLAGS"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=pango-1.28.0.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixglib
make install -j4
    ]=],
}
