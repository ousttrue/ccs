srcPackage {
    name="sdl-1.2",
    version="1.2.14",
    url={
        "http://www.libsdl.org/release/SDL-1.2.14.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=SDL-1.2.14.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make -j4 || exit 1
make install
    ]=],
}
