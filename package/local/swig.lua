srcPackage {
    name="swig",
    version="2.0.3",
    url={
        "http://jaist.dl.sourceforge.net/project/swig/swig/swig-2.0.3/swig-2.0.3.tar.gz"
    },
    depends={
        "pcre",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=swig-2.0.3.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
# swig200-rh623854.patch
(cd Lib/python && patch < $CCS_SELF_DIR/swig-2.0.3-pyrun.swg.diff)
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make -j4 || exit 1
make install
    ]=],
}
