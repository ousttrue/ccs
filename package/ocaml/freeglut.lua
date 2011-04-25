srcPackage {
    name="freeglut",
    version="2.6",
    url={
        "http://jaist.dl.sourceforge.net/project/freeglut/freeglut/freeglut-2.6.0.tar.gz"
    },
    sh=[=[
set -x
export LDFLAGS="$LDFLAGS -lopengl32"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=`basename http://jaist.dl.sourceforge.net/project/freeglut/freeglut/freeglut-2.6.0.tar.gz`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --without-x
fixlibtool none
make install -j4
    ]=],
}
