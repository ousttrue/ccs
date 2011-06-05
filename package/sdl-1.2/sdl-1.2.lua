srcPackage {
    name="sdl-1.2",
    version="1.2.14",
    url={
        "http://www.libsdl.org/release/SDL-1.2.14.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=SDL-1.2.14.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make -j4 || exit 1
make install
    ]=],
}
srcPackage {
    name="sdl-image-1.2",
    version="1.2",
    url={
        "http://www.libsdl.org/projects/SDL_image/release/SDL_image-1.2.10.tar.gz"
    },
    depends={
        "sdl-1.2", "libpng", "libjpeg",
    },
    sh=[=[
set -x
cd $CCS_TARGET_ROOT/
mkdir -p src
archive=SDL_image-1.2.10.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixlibtool
make install
    ]=],
}
srcPackage {
    name="sdl-mixer-1.2",
    version="1.2.11",
    url={
        "http://www.libsdl.org/projects/SDL_mixer/release/SDL_mixer-1.2.11.tar.gz",
    },
    depends={
        --"timidity", 
        "sdl-1.2", "libvorbis", "smpeg-1.2",
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
srcPackage {
    name="smpeg-1.2",
    version="0",
    --svn={ "svn://svn.icculus.org/smpeg/trunk", "smpeg", },
    url={
        "http://hoge/smpeg-0.4.5.tar.gz",
    },
    depends={
        "sdl-1.2",
    },
    sh=[=[
set -x
export LDFLAGS="$LDFLAGS -no-undefined"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
tar xzf $CCS_DOWNLOAD/smpeg-0.4.5.tar.gz -C src
cd src/smpeg-0.4.5
sh autogen.sh
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-shared
fixlibtool
perl -i.bak -pe 's/^am__EXEEXT_1.*//g' Makefile
make install
    ]=],
}
