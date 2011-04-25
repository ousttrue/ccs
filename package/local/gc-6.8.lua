srcPackage {
    name="gc",
    version="6.8",
    url={
        "http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/gc6.8.tar.gz",
    },
    ['sh_i686-pc-msys']=[=[
set -x
cd $CCS_TARGET_ROOT
mkdir -p src
tar xzf $CCS_DOWNLOAD/gc6.8.tar.gz -C src
cd src/gc6.8
./configure --prefix=$CCS_TARGET_ROOT --enable-threads=none
make install
    ]=],
    sh=[=[
set -x
cd $CCS_TARGET_ROOT
mkdir -p src
tar xzf $CCS_DOWNLOAD/gc6.8.tar.gz -C src
cd src/gc6.8
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-threads=posix
make install
    ]=],
}
