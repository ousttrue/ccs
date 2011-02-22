srcPackage {
    name="tk8.5.9",
    version="src.t",
    host="i686-pc-cygwin",
    url={
        "http://prdownloads.sourceforge.net/tcl/tk8.5.9-src.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=`basename $CCS_URL`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
