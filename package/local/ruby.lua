srcPackage {
    name="ruby",
    version="1.9.2-p180",
    url={
        "ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p180.tar.bz2"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=ruby-1.9.2-p180.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make install -j4
    ]=],
}
