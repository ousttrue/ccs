srcPackage {
    name="screen",
    version="4.0.3",
    release="6",
    url={
        "ftp://ftp.uni-erlangen.de/pub/utilities/screen/screen-4.0.3.tar.gz",
        "http://ftp.iij.ad.jp/pub/cygwin/release/screen/screen-4.0.3-6-src.tar.bz2",
    },
    depends_msys={
        "libcrypt",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
rm -rf src/screen-4.0.3
tar xzf $CCS_DOWNLOAD/screen-4.0.3.tar.gz -C src
cd src/screen-4.0.3
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
tar xjf $CCS_DOWNLOAD/screen-4.0.3-6-src.tar.bz2
cat *.patch | patch -p2
if [ $OSTYPE = 'msys' ];then
    patch < $CCS_SELF_DIR/screen-4.0.3-execvpe.diff
fi
patch < $CCS_SELF_DIR/screen-4.0.3-encoding.diff
touch /etc/ttys
make install
    ]=]
}

