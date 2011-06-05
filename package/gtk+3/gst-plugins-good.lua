srcPackage {
    name="gst-plugins-good",
    version="0.10.27",
    url={
        "http://gstreamer.freedesktop.org/src/gst-plugins-good/gst-plugins-good-0.10.27.tar.bz2",
    },
 
    sh=[=[
set -x
source $CCS_SELF_DIR/glibenv
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gst-plugins-good-0.10.27.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
fixlibtool
make install -j4
    ]=],
}
