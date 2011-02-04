srcPackage {
    name="sdl-mixer",
    version="1.2.11",
    url={
        "http://www.libsdl.org/projects/SDL_mixer/release/SDL_mixer-1.2.11.tar.gz",
    },
    depends={
        --"timidity", 
        "sdl", "libvorbis", "smpeg",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xzf /download/SDL_mixer-1.2.11.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/SDL_mixer-1.2.11
# Regenerate configuration files
cat acinclude/* >aclocal.m4
autoconf
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET
make install
    ]=],
}
