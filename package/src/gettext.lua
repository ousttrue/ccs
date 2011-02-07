srcPackage {
    name="gettext",
    version="0.18.1.1",
    url={
        "http://ftp.gnu.org/pub/gnu/gettext/gettext-0.18.1.1.tar.gz"
    },
    depends={
        "iconv",
    },
    sh=[=[
set -x
cd $CCS_ROOT
mkdir -p src
archive=`basename http://ftp.gnu.org/pub/gnu/gettext/gettext-0.18.1.1.tar.gz`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
LDFLAGS=-L$CCS_TARGET_ROOT/lib CFLAGS=-I$CCS_TARGET_ROOT/include ./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
