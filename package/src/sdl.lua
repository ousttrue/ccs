srcPackage {
    name="sdl",
    version="1.3",
    url={
        --"http://www.libsdl.org/tmp/SDL-1.3.tar.gz",
        "http://www.libsdl.org/tmp/SDL-1.3.zip",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
#tar xzf /download/SDL-1.3.tar.gz -C $DEM_ROOT/src
unzip -qo -d $DEM_ROOT/src /download/SDL-1.3.zip
cd $DEM_ROOT/src/SDL-1.3*
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make && make install
    ]=],
}
