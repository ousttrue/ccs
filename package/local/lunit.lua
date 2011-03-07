srcPackage {
    name="lunit",
    version="0.5",
    url={
        "http://www.nessie.de/mroth/lunit/lunit-0.5.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=lunit-0.5.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make install -j4
    ]=],
}
