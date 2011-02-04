srcPackage {
    name="sdl-image",
    version="1.2",
    host="msys",
    url={
        "http://www.libsdl.org/projects/SDL_image/release/SDL_image-1.2.10.tar.gz"
    },
    depends={
        "libpng", "libjpeg",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://www.libsdl.org/projects/SDL_image/release/SDL_image-1.2.10.tar.gz`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
LDFLAGS="-L/mingw/bin $LDFAGS" ./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
    ]=],
}
