srcPackage {
    name="ocaml",
    version="3.12.0",
    url={
        "http://caml.inria.fr/pub/distrib/ocaml-3.12/ocaml-3.12.0.tar.gz"
    },
    depends={
        "flexdll", "tcl",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=ocaml-3.12.0.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir

cp config/m-nt.h config/m.h
cp config/s-nt.h config/s.h
cp config/Makefile.mingw config/Makefile

make -f Makefile.nt world || exit 1
make -f Makefile.nt bootstrap || exit 1
make -f Makefile.nt opt || exit 1
make -f Makefile.nt opt.opt || exit 1
make -f Makefile.nt install PREFIX=$CCS_TARGET_ROOT
    ]=],
}
