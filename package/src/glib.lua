srcPackage {
    name="glib",
    version="2.26.1",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/glib/2.26/glib-2.26.1.tar.bz2"
    },
    depends={
        "gettext",
    },
    ["depends_i686-mingw32"]={
        {"gettext", "i686-mingw32"},
        {"libiconv", "i686-mingw32"},
    },
 
    sh=[=[
set -x
cd $CCS_TARGET_ROOT
mkdir -p src
archive=`basename http://ftp.gnome.org/pub/gnome/sources/glib/2.26/glib-2.26.1.tar.bz2`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
CFLAGS=-I$CCS_TARGET_ROOT/include LDFLAGS=-L$CCS_TARGET_ROOT/lib ./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
