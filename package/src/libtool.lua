srcPackage {
    name="libtool",
    version="2.4",
    url={
        "http://ftp.gnu.org/gnu/libtool/libtool-2.4.tar.xz"
    },

    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive_dir=`extract $CCS_DOWNLOAD/libtool-2.4.tar.xz src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
