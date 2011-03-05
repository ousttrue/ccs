srcPackage {
    name="tiff",
    version="3.9.4",
    url={
        "ftp://ftp.remotesensing.org/pub/libtiff/tiff-3.9.4.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=tiff-3.9.4.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make install -j4
    ]=],
}
