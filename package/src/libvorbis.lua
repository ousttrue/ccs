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
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
tar xjf $CCS_DOWNLOAD/libvorbis-1.3.2.tar.bz2 -C src
cd src/libvorbis-1.3.2
./configure --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
