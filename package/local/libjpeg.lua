srcPackage {
    name="libjpeg",
    version="8c",
    url={
        "http://www.ijg.org/files/jpegsrc.v8c.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=jpegsrc.v8c.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/jpeg-8c
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
