srcPackage {
    name="atk",
    version="1.33.6",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/atk/1.33/atk-1.33.6.tar.bz2"
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=atk-1.33.6.tar.gz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
make install -j4
    ]=],
}
