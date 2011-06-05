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
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
tar xzf $CCS_DOWNLOAD/SDL_mixer-1.2.11.tar.gz -C src
cd src/SDL_mixer-1.2.11
# Regenerate configuration files
cat acinclude/* >aclocal.m4
autoconf
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make clean install
    ]=],
}
