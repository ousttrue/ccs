srcPackage {
    name="freestyle",
    version="2.2.0",
    url={
        "http://prdownloads.sourceforge.net/freestyle/freestyle.2.2.0-src.tar.bz2"
    },
    depends={
        "lib3ds", "libQGLViewer",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=freestyle.2.2.0-src.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make -j4 || exit 1
make install
    ]=],
}
