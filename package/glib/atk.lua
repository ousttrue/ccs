srcPackage {
    name="atk",
    version="1.33.6",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/atk/1.33/atk-1.33.6.tar.bz2"
    },
    depends={
        "glib",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
source $CCS_ROOT/script/glibenv
cd $CCS_TARGET_ROOT
archive=atk-1.33.6.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
fixglib
fixlibtool
make install -j4
    ]=],
}
