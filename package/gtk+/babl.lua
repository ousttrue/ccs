srcPackage {
    name="babl",
    version="0.1.2",
    url={
        "ftp://ftp.gtk.org/pub/babl/0.1/babl-0.1.2.tar.bz2"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=babl-0.1.2.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
