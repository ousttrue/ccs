srcPackage {
    name="premake",
    version="4.3",
    url={
        "http://jaist.dl.sourceforge.net/project/premake/Premake/4.3/premake-4.3-src.zip"
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://jaist.dl.sourceforge.net/project/premake/Premake/4.3/premake-4.3-src.zip`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/premake-4.3
#./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
(cd build/gmake.unix/; make)
cp bin/release/premake4.exe $DEM_ROOT/host/$DEM_TARGET/bin
    ]=],
    sh_msys=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://jaist.dl.sourceforge.net/project/premake/Premake/4.3/premake-4.3-src.zip`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/premake-4.3
#./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
(cd build/gmake.windows/; make)
cp bin/release/premake4.exe $DEM_ROOT/host/$DEM_TARGET/bin
    ]=],
}
