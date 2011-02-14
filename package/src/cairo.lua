srcPackage {
    name="cairo",
    version="1.10.2",
    url={
        "http://cairographics.org/releases/cairo-1.10.2.tar.gz"
    },
    depends={
        "pixman", "freetype", "libpng",
    },
    sh=[=[
set -x
export CFLAGS="$CFLAGS -Dffs=__builtin_ffs"
export LDFLAGS="$LDFLAGS -no-undefined"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=`basename http://cairographics.org/releases/cairo-1.10.2.tar.gz`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixlibtool
make -j4 install
    ]=],
}
