srcPackage {
    name="ffmpeg",
    version="0.6.1",
    url={
        "http://www.ffmpeg.org/releases/ffmpeg-0.6.1.tar.bz2"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=ffmpeg-0.6.1.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
(cd libswscale; patch < $CCS_ROOT/package/src/ffmpeg.swscale_template.patch)
./configure --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
