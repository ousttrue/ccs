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
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=ck-2.0.26-src.zip
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/ck-2.0.26
pwd
patch -p1 < $CCS_ROOT/script/ck-2.0.26-cygwin-1.7.patch
make
cp ck.exe $CCS_TARGET_ROOT/bin
    ]=],
}

