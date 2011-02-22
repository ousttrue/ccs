--[[
srcPackage {
    name="flexdll",
    version="0.26",
    url={
        "http://alain.frisch.fr/flexdll/flexdll-0.26.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=flexdll-0.26.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
make -j4 build_mingw PREFIX=$CCS_TARGET_ROOT
    ]=],
}
--]]
