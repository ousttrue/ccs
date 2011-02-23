srcPackage {
    name="lablgl",
    version="1.04",
    url={
        "http://www.math.nagoya-u.ac.jp/~garrigue/soft/olabl/dist/lablgl-1.04.tar.gz"
    },
    depends={
        "ocaml", "freeglut",
    },
    sh=[=[
set -x
export FLEXLINKFLAGS="-L$CCS_TARGET_ROOT/lib -L`dirname $CCS_TARGET_ROOT`/lib"
export PATH="$CCS_TARGET_ROOT/lib/stublibs:$PATH"
export PREFIXED_INCLUDES="-I$CCS_TARGET_ROOT/include"
export OCAMLLIB="$CCS_TARGET_ROOT/lib"
export C_INCLUDE_PATH="$CCS_TARGET_ROOT/include"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=lablgl-1.04.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
#cp Makefile.config.mingw Makefile.config
cat Makefile.config.mingw | perl -pe 's/84/85/g' | perl -pe 's/glut32/glut/g' | perl -pe "s|^OCAMLDIR.*|OCAMLDIR=${CCS_TARGET_ROOT}|" > Makefile.config
perl -i.bak -pe 's/^typedef struct TkFontAttributes TkFontAttributes;//g' Togl/src/Togl/tkInt8.5.h
make TKINCLUDES="-I$CCS_TARGET_ROOT/include" TK_ROOT="$CCS_TARGET_ROOT" || exit 1
make TKINCLUDES="-I$CCS_TARGET_ROOT/include" TK_ROOT="$CCS_TARGET_ROOT" opt || exit 1
make install PREFIX=$CCS_TARGET_ROOT || exit 1
    ]=],
}
