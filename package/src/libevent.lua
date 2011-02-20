srcPackage {
    name="libevent",
    version="2.0.10",
    url={
        "http://monkey.org/~provos/libevent-2.0.10-stable.tar.gz"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=libevent-2.0.10-stable.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/libevent-2.0.10-stable
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
perl -i.bak -pe 's/c://g' test/.deps/*.Po
make install
    ]=],
}
