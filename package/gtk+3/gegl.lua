srcPackage {
    name="gegl",
    version="0.1.6",
    url={
        "ftp://ftp.gimp.org/pub/gegl/0.1/gegl-0.1.6.tar.bz2"
    },
    depends={
        "babl", "libjpeg", "libpng",
    },
    sh=[=[
set -x
source $CCS_SELF_DIR/glibenv
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gegl-0.1.6.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixlibtool
make install -j4
    ]=],
}
srcPackage {
    name="gegl",
    version="0.1.2",
    url={
        "ftp://ftp.gimp.org/pub/gegl/0.1/gegl-0.1.2.tar.bz2"
    },
    depends={
        "babl",
    },
    sh=[=[
set -x
source $CCS_SELF_DIR/glibenv
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=gegl-0.1.2.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixlibtool
make install -j4
    ]=],
}
