srcPackage {
    name="cairo",
    version="1.10.2",
    url={
        "http://cairographics.org/releases/cairo-1.10.2.tar.gz"
    },
    depends={
        "pixman", "freetype", "libpng", "glew", "glext", 
        "glib", "pango",
    },
    sh=[=[
set -x
export CFLAGS="$CFLAGS `pkg-config --cflags glib-2.0`"
export LDFLAGS="$LDFLAGS `pkg-config --libs glib-2.0`"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=cairo-1.10.2.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-gl --enable-wgl
(cd src && patch < $CCS_ROOT/package-gtk+/cairo.ffs.patch)
# #define ffs __builtin_ffs
fixlibtool
make -j4 install
    ]=],
}
