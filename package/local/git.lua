srcPackage {
    name="git",
    version="1.7.4.tar.",
    url={
        "http://www.kernel.org/pub/software/scm/git/git-1.7.4.tar.bz2"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=git-1.7.4.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make install -j4
    ]=],
}
