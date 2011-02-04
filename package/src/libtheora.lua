srcPackage {
    name="libtheora",
    version="1.1.1",
    url={
        "http://downloads.xiph.org/releases/theora/libtheora-1.1.1.tar.bz2",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xjf /download/libtheora-1.1.1.tar.bz2 -C $DEM_ROOT/src
cd $DEM_ROOT/src/libtheora-1.1.1
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make && make install
    ]=],
}
