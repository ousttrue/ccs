srcPackage {
    name="pkg-config",
    version="0.25",
    url={
        "http://pkgconfig.freedesktop.org/releases/pkg-config-0.25.tar.gz"
    },
    depends={
        "glib",
    },
 
    sh=[=[
set -x
cd $CCS_TARGET_ROOT
mkdir -p src
archive=`basename http://pkgconfig.freedesktop.org/releases/pkg-config-0.25.tar.gz`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
