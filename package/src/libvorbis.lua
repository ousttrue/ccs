srcPackage {
    name="libvorbis",
    version="1.3.2",
    url={
        "http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.2.tar.bz2",
    },
    depends={
        "libogg",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xjf /download/libvorbis-1.3.2.tar.bz2 -C $DEM_ROOT/src
cd $DEM_ROOT/src/libvorbis-1.3.2
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make && make install
    ]=],
}
