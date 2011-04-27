srcPackage {
    name="squirrel",
    version="3.0",
    url={
        "http://squirrel.googlecode.com/files/squirrel_3_0_stable.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=squirrel_3_0_stable.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/SQUIRREL3
make -j4
install -D sq/sq.exe $CCS_TARGET_ROOT/bin/
install -D lib/libsqstdlib.a lib/libsquirrel.a $CCS_TARGET_ROOT/lib/
install -D include/*.h $CCS_TARGET_ROOT/include/
    ]=],
}
