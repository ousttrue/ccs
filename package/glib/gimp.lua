srcPackage {
    name="gimp",
    version="2.6.11.tar",
    host="i686-pc-cygwin",
    url={
        "ftp://ftp.gimp.org/pub/gimp/v2.6/gimp-2.6.11.tar.bz2"
    },
    depends={
        "gtk+", "gegl",
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
