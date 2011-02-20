srcPackage {
    name="libgsf",
    version="1.14.19",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/libgsf/1.14/libgsf-1.14.19.tar.bz2"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=libgsf-1.14.19.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
