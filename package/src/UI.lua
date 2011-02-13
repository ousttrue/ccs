srcPackage {
    name="UI",
    version="0",
    url={
        "http://www.bramstein.com/projects/gui/UI.zip"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=UI.zip
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/UI.xcodeproj
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install
    ]=],
}
