srcPackage {
    name="expat",
    version="2.0.1",
    url={
        "http://jaist.dl.sourceforge.net/project/expat/expat/2.0.1/expat-2.0.1.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=expat-2.0.1.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --prefix=$CCS_TARGET_ROOT || exit 1
make || exit 1
make install -j4
    ]=],
}
