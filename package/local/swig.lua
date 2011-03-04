srcPackage {
    name="swig",
    version="2.0.2",
    url={
        "http://jaist.dl.sourceforge.net/project/swig/swig/swig-2.0.2/swig-2.0.2.tar.gz"
    },
    depends={
        "pcre",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=swig-2.0.2.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make -j4 || exit 1
make install
    ]=],
}
