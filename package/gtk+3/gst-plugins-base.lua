srcPackage {
    name="gst-plugins-base",
    version="0.10.32",
    url={
        "http://gstreamer.freedesktop.org/src/gst-plugins-base/gst-plugins-base-0.10.32.tar.bz2"
    },
 
    sh=[=[
set -x
source $CCS_SELF_DIR/glibenv
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gst-plugins-base-0.10.32.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
fixlibtool
make install -j4
    ]=],
}
