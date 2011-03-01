srcPackage {
    name="irrlicht",
    version="1.7.2",
    url={
        "http://jaist.dl.sourceforge.net/project/irrlicht/Irrlicht%20SDK/1.7/1.7.2/irrlicht-1.7.2.zip",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
unzip -qo -d src $CCS_DOWNLOAD/irrlicht-1.7.2.zip
cd src/irrlicht-1.7.2/source/Irrlicht
make CXXFLAGS="-D__GNUWIN32__ -DCONSOLE_FULLSCREEN_MODE=1 $CXXFLAGS $CFLAGS"
    ]=],
}
