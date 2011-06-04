srcPackage {
    name="libQGLViewer",
    version="2.3.9",
    url={
        "http://www.libqglviewer.com/src/libQGLViewer-2.3.9.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=libQGLViewer-2.3.9.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
cd QGLViewer
qmake
make
mkdir -p $CCS_TARGET_ROOT/include/QGLViewer
cp *.h $CCS_TARGET_ROOT/include/QGLViewer/
cp release/QGLViewer2.dll $CCS_TARGET_ROOT/bin/
cp release/libQGLViewer2.a $CCS_TARGET_ROOT/lib/
    ]=],
}
