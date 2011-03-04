srcPackage {
    name="perl",
    version="5.12.3",
    url={
        "http://search.cpan.org/CPAN/authors/id/R/RJ/RJBS/perl-5.12.3.tar.gz"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=perl-5.12.3.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --prefix=$CCS_TARGET_ROOT || exit 1
make install -j4
    ]=],
}
