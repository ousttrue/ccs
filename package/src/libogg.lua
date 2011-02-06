srcPackage {
    name="libogg",
    version="1.2.2",
    url={
        "http://downloads.xiph.org/releases/ogg/libogg-1.2.2.tar.xz",
    },
    sh=[=[
set -x
cd $CCS_TARGET_ROOT
mkdir -p src
tar xJf $CCS_DOWNLOAD/libogg-1.2.2.tar.xz -C src
cd src/libogg-1.2.2
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
