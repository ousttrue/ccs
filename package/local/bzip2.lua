srcPackage {
    name="bzip2",
    version="1.0.6",
    url={
        "http://bzip.org/1.0.6/bzip2-1.0.6.tar.gz",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=bzip2-1.0.6.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install PREFIX=$CCS_TARGET_ROOT -j4
    ]=],
}
