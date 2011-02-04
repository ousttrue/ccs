srcPackage {
    name="libogg",
    version="1.2.2",
    url={
        "http://downloads.xiph.org/releases/ogg/libogg-1.2.2.tar.xz",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xJf /download/libogg-1.2.2.tar.xz -C $DEM_ROOT/src
cd $DEM_ROOT/src/libogg-1.2.2
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make && make install
    ]=],
}
