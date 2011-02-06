srcPackage {
    name="sdl-image",
    version="1.2",
    url={
        "http://www.libsdl.org/projects/SDL_image/release/SDL_image-1.2.10.tar.gz"
    },
    depends={
        "sdl", "libpng", "libjpeg",
    },
    sh=[=[
set -x
cd $CCS_TARGET_ROOT/
mkdir -p src
archive=SDL_image-1.2.10.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
#patch < /package/src/sdl-image-libpng-15.patch
CFLAGS="-I$CCS_TARGET_ROOT/include `libpng-config --cflags`" LDFLAGS="-L$CCS_TARGET_ROOT/lib" ./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
