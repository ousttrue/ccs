srcPackage {
    name="findlib",
    version="1.2.6",
    url={
        "http://download.camlcity.org/download/findlib-1.2.6.tar.gz"
    },
    sh=[=[
set -x
export PATH="$CCS_TARGET_ROOT/bin:$CCS_TARGET_ROOT/lib/stublibs:$PATH"
export OCAMLLIB=$CCS_TARGET_ROOT/lib
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=findlib-1.2.6.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure
make || exit 1
make install
    ]=],
}
