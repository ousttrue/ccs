srcPackage {
    name="smpeg",
    version="0",
    --svn={ "svn://svn.icculus.org/smpeg/trunk", "smpeg", },
    url={
        "http://hoge/smpeg-0.4.5.tar.gz",
    },
    depends={
        "sdl",
    },
    sh=[=[
set -x
export LDFLAGS="$LDFLAGS -no-undefined"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
tar xzf $CCS_DOWNLOAD/smpeg-0.4.5.tar.gz -C src
cd src/smpeg-0.4.5
sh autogen.sh
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-shared
fixlibtool
perl -i.bak -pe 's/^am__EXEEXT_1.*//g' Makefile
make install
    ]=],
}
