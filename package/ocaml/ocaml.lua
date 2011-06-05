srcPackage {
    name="ocaml",
    version="3.12.0",
    url={
        "http://caml.inria.fr/pub/distrib/ocaml-3.12/ocaml-3.12.0.tar.gz"
    },
    depends={
        "flexdll", "tk",
    },
    sh=[=[
set -x
export FLEXLINKFLAGS="-L$CCS_TARGET_ROOT/lib -L`dirname $CCS_TARGET_ROOT`/lib"
export C_INCLUDE_PATH="$CCS_TARGET_ROOT/include"
export PATH="$CCS_TARGET_ROOT/bin:$PATH"
#export OCAMLLIB="$CCS_TARGET_ROOT/bin"
mkdir -p $CCS_TARGET_ROOT/src
mkdir -p $CCS_TARGET_ROOT/bin
cd $CCS_TARGET_ROOT
archive=ocaml-3.12.0.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir

cp config/m-nt.h config/m.h
cp config/s-nt.h config/s.h
cp config/Makefile.mingw config/Makefile

make -f Makefile.nt TK_ROOT=$CCS_TARGET_ROOT world || exit 1
make -f Makefile.nt TK_ROOT=$CCS_TARGET_ROOT bootstrap || exit 1
make -f Makefile.nt TK_ROOT=$CCS_TARGET_ROOT opt || exit 1
make -f Makefile.nt TK_ROOT=$CCS_TARGET_ROOT opt.opt || exit 1
make -f Makefile.nt install PREFIX=$CCS_TARGET_ROOT
    ]=],
}
