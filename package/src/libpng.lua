srcPackage {
    name="libpng",
    depends={
        "zlib",
    },
    version="1.5.0",
    url={
        "http://download.sourceforge.net/libpng/libpng-1.5.0.tar.xz",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xJf /download/libpng-1.5.0.tar.xz -C $DEM_ROOT/src
cd $DEM_ROOT/src/libpng-1.5.0
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make && make install
    ]=],
}
