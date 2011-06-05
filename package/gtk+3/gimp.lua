srcPackage {
    name="gimp",
    version="2.6.11",
    url={
        "ftp://ftp.gimp.org/pub/gimp/v2.6/gimp-2.6.11.tar.bz2"
    },
    depends={
        "gtk+", "gegl", "intltool", "tiff",
    },
    sh=[=[
set -x
source $CCS_SELF_DIR/glibenv
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive="gimp-2.6.11.tar.bz2"
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --disable-python || exit 1
fixlibtool
make install -j4
    ]=],
}
