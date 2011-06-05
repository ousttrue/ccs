srcPackage {
    name="cairo",
    version="1.10.2",
    url={
        "http://cairographics.org/releases/cairo-1.10.2.tar.gz"
    },
    depends={
        "pixman", "freetype", "libpng", "glew", "glext",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=cairo-1.10.2.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-gl --enable-wgl
perl -i.bak -pe 's/\bffs\b/__builtin_ffs/g' src/cairo.c
fixlibtool
make -j4 install
    ]=],
}
