srcPackage {
    name="pixman",
    version="0.21.2",
    url={
        "http://cairographics.org/releases/pixman-0.21.2.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=`basename http://cairographics.org/releases/pixman-0.21.2.tar.gz`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install
    ]=],
}
