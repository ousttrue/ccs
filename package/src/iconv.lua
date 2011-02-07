srcPackage {
    name="iconv",
    version="1.13.1",
    url={
        "http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.13.1.tar.gz",
    },
    sh=[=[
set -x
cd $CCS_ROOT
mkdir -p src
archive=libiconv-1.13.1.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
