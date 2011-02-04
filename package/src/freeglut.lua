srcPackage {
    name="freeglut",
    version="2.6",
    url={
        "http://jaist.dl.sourceforge.net/project/freeglut/freeglut/freeglut-2.6.0.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://jaist.dl.sourceforge.net/project/freeglut/freeglut/freeglut-2.6.0.tar.gz`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET --without-x && make install
    ]=],
}
