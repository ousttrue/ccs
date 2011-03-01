srcPackage {
    name="turska",
    version="2.0.0",
    url={
        "http://turska.googlecode.com/files/turska_2_0_0.zip"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=turska_2_0_0.zip
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/turs2
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install
    ]=],
}
