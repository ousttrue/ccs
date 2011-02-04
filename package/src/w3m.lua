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
mkdir -p $DEM_ROOT/src
tar xzf /download/w3m-0.5.3.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/w3m-0.5.3
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET 
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
