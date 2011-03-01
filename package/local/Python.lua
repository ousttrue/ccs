srcPackage {
    name="Python",
    version="3.2",
    url={
        "http://www.python.org/ftp/python/3.2/Python-3.2.tar.bz2"
    },
 
    sh=[=[
set -x
export CFLAGS="$CFLAGS -D_MSC_VER=6"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=Python-3.2.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
