--[ [
srcPackage {
    name="w3m",
    depends={
        "gc",
    },
    version="0.5.3",
    url={
        "http://www.sic.med.tohoku.ac.jp/~satodai/w3m/src/w3m-0.5.3.tar.gz",
    },
    sh=[=[
set -x
cd $CCS_TARGET_ROOT
mkdir -p src
tar xzf $CCS_DOWNLOAD/w3m-0.5.3.tar.gz -C src
cd src/w3m-0.5.3
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install
    ]=],
}
--]]
--[[
srcPackage {
    name="w3m",
    depends={
        "gc",
    },
    version="0.5.2",
    url={
        "http://www.sic.med.tohoku.ac.jp/~satodai/w3m/src/w3m-0.5.2.tar.gz",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xzf /download/w3m-0.5.2.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/w3m-0.5.2
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET
make install
    ]=],
}
]]
