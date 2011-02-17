--[[
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
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gettext-0.18.1.1.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
(cd gettext-tools/woe32dll; patch < $CCS_ROOT/package/src/gettext.gettextlib-exports.patch)
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
--]]
srcPackage {
    name="gettext",
    version="0.17",
    url={
        "http://ftp.gnu.org/pub/gnu/gettext/gettext-0.17.tar.gz",
    },
    depends={
        "iconv",
    },
    sh=[=[
set -x
export CFLAGS="-DHAVE_INLINE $CFLAGS"
export CXXFLAGS="$CFLAGS"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gettext-0.17.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
(cd gettext-tools/woe32dll; patch < $CCS_ROOT/package/src/gettext.gettextlib-exports.patch)
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
