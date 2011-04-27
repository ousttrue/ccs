srcPackage {
    name="ncurses",
    version="5.9",
    url={
        "http://ftp.gnu.org/pub/gnu/ncurses/ncurses-5.9.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=ncurses-5.9.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=i686-pc-cygwin --prefix=$CCS_TARGET_ROOT || exit 1
make -j4 || exit
make install
    ]=],
}
