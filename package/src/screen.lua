srcPackage {
    name="screen",
    version="4.0.3",
    release="1",
    url={
        "ftp://ftp.uni-erlangen.de/pub/utilities/screen/screen-4.0.3.tar.gz",
        "http://ftp.iij.ad.jp/pub/cygwin/release/screen/screen-4.0.3-6-src.tar.bz2",
    },
    depends_msys={
        "libcrypt",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
rm -rf $DEM_ROOT/src/screen-4.0.3
tar xzf /download/screen-4.0.3.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/screen-4.0.3
tar xjf /download/screen-4.0.3-6-src.tar.bz2
cat *.patch | patch -p2
patch < /script/screen-4.0.3-execvpe.diff
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET
make install
touch /etc/ttys
    ]=]
}
