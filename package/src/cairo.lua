srcPackage {
    name="cairo",
    version="1.10.2",
    url={
        "http://cairographics.org/releases/cairo-1.10.2.tar.gz"
    },
    depends={
        "pixman", "freetype", "libpng", "glib",
    },
    sh=[=[
set -x
export LDFLAGS="`pkg-config --libs glib-2.0` `pkg-config --libs gobject-2.0` $LDFLAGS -no-undefined"
export CFLAGS="`pkg-config --cflags glib-2.0` `pkg-config --cflags gobject-2.0` $CFLAGS -Dffs=__builtin_ffs"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=`basename http://cairographics.org/releases/cairo-1.10.2.tar.gz`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-opengl
fixlibtool
fixglib
make -j4 install
    ]=],
}
