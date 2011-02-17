srcPackage {
    name="libxml2",
    version="2.7.8",
    url={
        "ftp://xmlsoft.org/libxml2/libxml2-sources-2.7.8.tar.gz"
    },
    depends={
        "zlib",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=libxml2-sources-2.7.8.tar.gz
extract $CCS_DOWNLOAD/$archive src
cd src/libxml2-2.7.8
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixlibtool
make install -j4
    ]=],
}
