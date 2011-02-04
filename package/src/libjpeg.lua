srcPackage {
    name="libjpeg",
    version="8c",
    url={
        "http://www.ijg.org/files/jpegsrc.v8c.tar.gz"
    },
    sh=[=[
set -x
cd $CCS_ROOT
mkdir -p src
archive=jpegsrc.v8c.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/jpeg-8c
./configure --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
