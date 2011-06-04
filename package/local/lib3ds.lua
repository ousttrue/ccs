srcPackage {
    name="lib3ds",
    version="1.3.0",
    url={
        "http://lib3ds.googlecode.com/files/lib3ds-1.3.0.zip"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=lib3ds-1.3.0.zip
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make -j4 || exit 1
make install
    ]=],
}
