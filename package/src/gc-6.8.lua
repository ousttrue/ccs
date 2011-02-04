srcPackage {
    name="gc",
    version="6.8",
    url={
        "http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/gc6.8.tar.gz",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xzf /download/gc6.8.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/gc6.8
#./configure --prefix=$DEM_ROOT/host/$DEM_TARGET --enable-threads=posix
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET --disable-threads
#./configure --prefix=$DEM_ROOT/host/$DEM_TARGET --enable-threads=win32
make install
    ]=],
}
