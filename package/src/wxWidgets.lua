srcPackage {
    name="wxWidgets",
    version="2.9.1",
    url={
        "http://prdownloads.sourceforge.net/wxwindows/wxWidgets-2.9.1.tar.bz2"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive_dir=`extract $CCS_DOWNLOAD/wxWidgets-2.9.1.tar.bz2 src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --with-msw --with-opengl
make -j4 install
    ]=],
}
