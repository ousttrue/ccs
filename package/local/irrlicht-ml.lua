srcPackage {
    name="irrlicht-ml",
    version="1.7.1",
    url={
        "http://etwas.wolfish.org/files/IrrlichtML-1.7.1-win32Linux.zip"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=IrrlichtML-1.7.1-win32Linux.zip
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/IrrlichtML-1.7.1-win32Linux/irrlicht-1.7.1/source/Irrlicht
make CXXFLAGS="-D__GNUWIN32__ -DCONSOLE_FULLSCREEN_MODE=1 $CXXFLAGS $CFLAGS"
    ]=],
}
