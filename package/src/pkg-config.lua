srcPackage {
    name="pkg-config",
    version="0.25",
    url={
        "http://pkgconfig.freedesktop.org/releases/pkg-config-0.25.tar.gz"
    },
    depends={
        "glib",
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://pkgconfig.freedesktop.org/releases/pkg-config-0.25.tar.gz`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
    ]=],
}
