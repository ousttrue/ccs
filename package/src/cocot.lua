srcPackage {
    name="cocot",
    version="0",
    url={
        --"https://github.com/vmi/cocot/tarball/master"
    },
    depends={
        "libiconv",
    },
    archive="vmi-cocot-1c5e570.tar.gz",
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xzf /download/vmi-cocot-1c5e570.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/vmi-cocot-1c5e570
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET
make install
    ]=],
}
