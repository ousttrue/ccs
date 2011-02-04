srcPackage {
    name="libpng",
    depends={
        "zlib",
    },
    version="1.5.0",
    url={
        "http://download.sourceforge.net/libpng/libpng-1.5.0.tar.xz",
    },
    sh=[=[
set -x
cd $CCS_ROOT
mkdir -p src
tar xJf $CCS_DOWNLOAD/libpng-1.5.0.tar.xz -C src
cd src/libpng-1.5.0
./configure --prefix=$CCS_TARGET_ROOT && make install
    ]=],
}
