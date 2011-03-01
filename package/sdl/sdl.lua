srcPackage {
    name="sdl",
    version="1.3",
    url={
        "http://www.libsdl.org/tmp/SDL-1.3.zip",
    },
    sh=[=[
set -x
cd $CCS_TARGET_ROOT/
mkdir -p src
unzip -qo -d src $CCS_DOWNLOAD/SDL-1.3.zip
cd src/SDL-1.3*
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
