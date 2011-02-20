srcPackage {
    name="ctags",
    version="5.8j2",
    url={
        "http://hp.vector.co.jp/authors/VA025040/ctags/downloads/ctags-5.8j2.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=ctags-5.8j2.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
