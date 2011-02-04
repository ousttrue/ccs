srcPackage {
    name="pixman",
    version="0.21.4",
    url={
        "http://cairographics.org/releases/pixman-0.21.4.tar.gz"
    },
    depends={
        {"pkg-config", "msys"},
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://cairographics.org/releases/pixman-0.21.4.tar.gz`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
    ]=],
}
