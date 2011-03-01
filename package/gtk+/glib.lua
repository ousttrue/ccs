srcPackage {
    name="glib",
    version="2.28.0",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/glib/2.28/glib-2.28.0.tar.bz2",
    },
    depends={
        "gettext",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=glib-2.28.0.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixlibtool
#(cd glib/ && cp glibconfig.h.win32 glibconfig.h)
make install -j4
    ]=],
}
