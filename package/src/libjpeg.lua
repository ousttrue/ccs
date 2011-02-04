srcPackage {
    name="libjpeg",
    version="8c",
    url={
        "http://www.ijg.org/files/jpegsrc.v8c.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://www.ijg.org/files/jpegsrc.v8c.tar.gz`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/jpeg-8c
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
    ]=],
}
