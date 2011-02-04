srcPackage {
    name="cscope",
    version="15.7a",
    url={
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=cscope-15.7a.tar.bz2
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
    ]=],
}
