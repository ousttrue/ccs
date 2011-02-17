srcPackage {
    name="gtk+",
    version="3.0.0",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/gtk+/3.0/gtk+-3.0.0.tar.bz2"
    },
    depends={
        "cairo", "gdk-pixbuf", "gilb", "pkg-config", 
        "pango", "atk", "fontconfig",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gtk+-3.0.0.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
