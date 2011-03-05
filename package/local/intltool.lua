srcPackage {
    name="intltool",
    version="0.40.6",
    url={
        "http://ftp.acc.umu.se/pub/gnome/sources/intltool/0.40/intltool-0.40.6.tar.bz2"
    },
    depends={
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=intltool-0.40.6.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
make install -j4
    ]=],
}
