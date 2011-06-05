srcPackage {
    name="clutter",
    version="1.6.2",
    url={
        "http://source.clutter-project.org/sources/clutter/1.6/clutter-1.6.2.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive_dir=`extract $CCS_DOWNLOAD/clutter-1.6.2.tar.gz src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install
    ]=],
}
