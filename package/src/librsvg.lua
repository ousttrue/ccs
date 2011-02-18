srcPackage {
    name="librsvg",
    version="2.32.1",
    url={
        "http://ftp.gnome.org/pub/GNOME/sources/librsvg/2.32/librsvg-2.32.1.tar.bz2"
    },
    depends={
        "cairo", "libxml2", "libart", "libgsf",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=librsvg-2.32.1.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
