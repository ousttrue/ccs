srcPackage {
    name="tcl",
    version="8.5.9",
    url={
        "http://prdownloads.sourceforge.net/tcl/tcl8.5.9-src.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=tcl8.5.9-src.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/tcl8.5.9/win
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-gcc --enable-threads
make install -j4
    ]=],
}
