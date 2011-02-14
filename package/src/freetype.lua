srcPackage {
    name="freetype",
    version="2.4.4",
    url={
        "http://download.savannah.gnu.org/releases/freetype/freetype-2.4.4.tar.bz2"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=freetype-2.4.4.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
