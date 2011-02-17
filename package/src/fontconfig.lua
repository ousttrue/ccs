srcPackage {
    name="fontconfig",
    version="2.8.0",
    url={
        "http://www.freedesktop.org/software/fontconfig/release/fontconfig-2.8.0.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=fontconfig-2.8.0.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
