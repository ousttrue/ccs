srcPackage {
    name="gtkglarea",
    version="2.0.1",
    url={
        "http://ftp.acc.umu.se/pub/gnome/sources/gtkglarea/2.0/gtkglarea-2.0.1.tar.bz2"
    },
    depends={
        "gtk+2-bin",
    },
    sh=[=[
set -x
export PKG_CONFIG_PATH="$CCS_TARGET_ROOT/lib/pkgconfig:$PKG_CONFIG_PATH"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gtkglarea-2.0.1.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
find . -name "Makefile" | xargs perl -i.bak -pe "\
s|c:/devel/target/d7fd1ca0216656a73e6b25377ec11a8c|$CCS_TARGET_ROOT|g || \
1"
find . -name "Makefile" | xargs perl -i.bak -pe "\
s|^(CFLAGS =.*)|\\1 \
 -I$CCS_TARGET_ROOT/include/glib-2.0\
 -I$CCS_TARGET_ROOT/include/gdk-pixbuf-2.0\
 -I$CCS_TARGET_ROOT/include/pango-1.0\
 -I$CCS_TARGET_ROOT/include/atk-1.0\
 -I$CCS_TARGET_ROOT/include/cairo\
 -I$CCS_TARGET_ROOT/lib/gtk-2.0/include\
 -I$CCS_TARGET_ROOT/lib/glib-2.0/include\
| \
|| \
s|^(GTK_LIBS =.*)|\\1 \
 -lglib-2.0\
 -lgobject-2.0\
 -lgdk-win32-2.0\
 -lgdi32\
| \
|| \
1"
make -j4 || exit 1
make install
    ]=],
}
