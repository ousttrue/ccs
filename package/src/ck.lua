srcPackage {
    name="ck",
    version="2.0.26",
    url={
        "http://homepage3.nifty.com/ackie-java/ck-2.0.26-src.zip"
    },

    depends={
        "libpng",
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://homepage3.nifty.com/ackie-java/ck-2.0.26-src.zip`
archive_dir=`extract /c/download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/ck-2.0.26
patch -p1 < $DEM_ROOT/script/ck-2.0.26-cygwin-1.7.patch
make
cp ck.exe $DEM_ROOT/host/$DEM_TARGET/bin
    ]=],
}

