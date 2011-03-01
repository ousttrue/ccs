srcPackage {
    name="gtk+",
    version="3.0.0",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/gtk+/3.0/gtk+-3.0.0.tar.bz2"
    },
    depends={
        "cairo", "gdk-pixbuf", "glib", 
        --"pkg-config", 
        "pango", "atk", "fontconfig",
    },
    sh=[=[
set -x
export CFLAGS="$CFLAGS `pkg-config --cflags glib-2.0` `pkg-config --cflags pango` `pkg-config --cflags cairo` `pkg-config --cflags gobject-2.0` `pkg-config --cflags gio-2.0` `pkg-config --cflags gdk-pixbuf-2.0`"
export LDFLAGS="$LDFLAGS `pkg-config --libs glib-2.0` `pkg-config --libs pango` `pkg-config --libs cairo` `pkg-config --libs gobject-2.0` `pkg-config --libs gio-2.0` `pkg-config --libs gdk-pixbuf-2.0` `pkg-config --libs pangocairo` `pkg-config --libs cairo-gobject`"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gtk+-3.0.0.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
GLIB_COMPILE_SCHEMAS=$CCS_TARGET_ROOT/bin/glib-compile-schemas.exe ./configure --host=$CCS_TARGET --build=i686-pc-cygwin --prefix=$CCS_TARGET_ROOT || exit 1
fixglib
fixlibtool
make install -j4
    ]=],
}
