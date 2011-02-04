srcPackage {
    name="smpeg",
    version="0",
    --svn={ "svn://svn.icculus.org/smpeg/trunk", "smpeg", },
    url={
        "http://hoge/smpeg-0.4.5.tar.gz",
    },
    depends={
        "sdl",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xzf /download/smpeg-0.4.5.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/smpeg-0.4.5
sh autogen.sh
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET
patch < /script/smpeg-Makefile.patch
make install
    ]=],
}
