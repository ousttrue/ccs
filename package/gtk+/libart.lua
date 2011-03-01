srcPackage {
    name="libart",
    version="2.3",
    license="LGPL",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/libart_lgpl/2.3/libart_lgpl-2.3.21.tar.bz2"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=libart_lgpl-2.3.21.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
