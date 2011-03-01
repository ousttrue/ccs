srcPackage {
    name="timidity",
    version="0",
    url={
        "http://www.libsdl.org/projects/SDL_mixer/timidity/timidity.tar.gz",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xzf /download/timidity.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/timidity
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make && make install
    ]=],
}
