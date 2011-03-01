srcPackage {
    name="findlib",
    version="1.2.6",
    url={
        "http://download.camlcity.org/download/findlib-1.2.6.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=findlib-1.2.6.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure
make install -j4
    ]=],
}
