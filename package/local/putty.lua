srcPackage {
    name="putty",
    version="0.60",
    url={
        "http://the.earth.li/~sgtatham/putty/latest/putty-0.60.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=putty-0.60.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir/windows
make -f Makefile.cyg
    ]=],
}
