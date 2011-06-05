srcPackage {
    name="vala",
    version="0.11.6",
    url={
        "http://download.gnome.org/sources/vala/0.11/vala-0.11.6.tar.bz2"
    },
    depends={
        "glib",
    },
    sh=[=[
set -x
source $CCS_SELF_DIR/glibenv
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=vala-0.11.6.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
fixlibtool
make version.h
make install -j4
    ]=],
}
