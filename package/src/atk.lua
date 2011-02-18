srcPackage {
    name="atk",
    version="1.33.6",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/atk/1.33/atk-1.33.6.tar.bz2"
    },
    depends={
        "glib",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
export LDFLAGS="`pkg-config --libs glib-2.0` `pkg-config --libs gobject-2.0` $LDFLAGS"
export CFLAGS="`pkg-config --cflags glib-2.0` `pkg-config --cflags gobject-2.0` $CFLAGS"
cd $CCS_TARGET_ROOT
archive=atk-1.33.6.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixglib
make install -j4
    ]=],
}
