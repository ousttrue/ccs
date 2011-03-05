srcPackage {
    name="Gauche",
    version="0.9",
    url={
        "http://jaist.dl.sourceforge.net/project/gauche/Gauche/Gauche-0.9.1.tgz"
    },
    depends={
        "zlib",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=Gauche-0.9.1.tgz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --prefix=$CCS_TARGET_ROOT || exit 1
make install -j4
    ]=],
}
