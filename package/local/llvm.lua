srcPackage {
    name="llvm",
    version="2.8",
    url={
        "http://llvm.org/releases/2.8/llvm-2.8.tgz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=llvm-2.8.tgz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
