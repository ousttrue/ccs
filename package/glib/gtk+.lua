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
source $CCS_SELF_DIR/glibenv
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gtk+-3.0.0.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
GLIB_COMPILE_SCHEMAS=$CCS_TARGET_ROOT/bin/glib-compile-schemas.exe ./configure --host=$CCS_TARGET --build=i686-pc-cygwin --prefix=$CCS_TARGET_ROOT --without-x || exit 1
fixglib
fixlibtool
patch < $CCS_ROOT/package/glib/gtk+.libtool.patch
(cd modules/other/gail && patch -p1 < $CCS_ROOT/package/glib/gtk+.gail.patch)
if make -j4; then
    true
else
    pushd gtk
    make gtk-update-icon-cache.exe
    perl -i.bak -pe 's/^GTK_UPDATE_ICON_CACHE\b.*$/GTK_UPDATE_ICON_CACHE = .\/gtk-update-icon-cache.exe/' Makefile
    popd
fi
make install -j4
    ]=],
}
