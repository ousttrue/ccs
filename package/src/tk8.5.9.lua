srcPackage {
    name="tk",
    version="8.5.9",
    url={
        "http://prdownloads.sourceforge.net/tcl/tk8.5.9-src.tar.gz"
    },
    depends={
        "tcl",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=tk8.5.9-src.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/tk8.5.9/win
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-gcc --enable-threads
make install
    ]=],
}
