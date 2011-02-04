srcPackage {
    name="freetype",
    version="2.4.4",
    host="msys",
    url={
        "http://download.savannah.gnu.org/releases/freetype/freetype-2.4.4.tar.bz2"
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://download.savannah.gnu.org/releases/freetype/freetype-2.4.4.tar.bz2`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
    ]=],
}
