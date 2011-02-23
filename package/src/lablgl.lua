srcPackage {
    name="lablgl",
    version="1.04",
    url={
        "http://www.math.nagoya-u.ac.jp/~garrigue/soft/olabl/dist/lablgl-1.04.tar.gz"
    },
    depends={
        "ocaml",
    },
    sh=[=[
set -x
export FLEXLINKFLAGS="-L$CCS_TARGET_ROOT/lib -L`dirname $CCS_TARGET_ROOT`/lib"
export PATH="$CCS_TARGET_ROOT/lib/stublibs:$PATH"
export PREFIXED_INCLUDES="-I$CCS_TARGET_ROOT/include"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=lablgl-1.04.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
cp Makefile.config.mingw Makefile.config
make || exit 1
make opt || exit 1
make install PREFIX=$CCS_TARGET_ROOT || exit 1
    ]=],
}
