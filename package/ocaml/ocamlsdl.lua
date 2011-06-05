srcPackage {
    name="ocamlsdl",
    version="0.8.",
    url={
        "http://jaist.dl.sourceforge.net/project/ocamlsdl/OCamlSDL/ocamlsdl-0.8.0/ocamlsdl-0.8.0.tar.gz"
    },
    depends={
        "ocaml", "sdl-1.2", "sdl-image-1.2", "sdl-mixer-1.2",
    },
    sh=[=[
set -x
export PATH=$CCS_TARGET_ROOT/../sdl/bin:$PATH
export FLEXLINKFLAGS="-L$CCS_TARGET_ROOT/../sdl/lib -L$CCS_TARGET_ROOT/../lib"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=ocamlsdl-0.8.0.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT || exit 1
perl -i.bak -pe "s/,dll\\*\\.so/,dll*.dll/" src/Makefile
make || exit 1
make install
    ]=],
}
