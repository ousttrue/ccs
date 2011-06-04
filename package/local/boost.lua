srcPackage {
    name="boost",
    version="1.45.0",
    url={
        "http://jaist.dl.sourceforge.net/project/boost/boost/1.45.0/boost_1_45_0.tar.bz2"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=boost_1_45_0.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
ls
    ]=],
}
