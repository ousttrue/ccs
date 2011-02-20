srcPackage {
    name="bullet",
    version="2.77",
    url={
        "http://bullet.googlecode.com/files/bullet-2.77.tgz",
    },
    depends={
        "freeglut",
    },
    sh=[=[
CCS_TARGET_ROOT=$1
set -x
mkdir -p $CCS_ROOT/src
archive=bullet-2.77.tgz
archive_dir=`extract /download/$archive $CCS_ROOT/src`
cd $CCS_ROOT/src/$archive_dir
sh autogen.sh
./configure --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
