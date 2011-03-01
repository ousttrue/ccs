srcPackage {
    name="libpng",
    depends={
        "zlib",
    },
    version="1.4.5",
    url={
        "http://download.sourceforge.net/libpng/libpng-1.4.5.tar.xz",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
rm -rf src/libpng-1.4.5
tar xJf $CCS_DOWNLOAD/libpng-1.4.5.tar.xz -C src
cd src/libpng-1.4.5
if [ $CCS_TARGET = "i686-pc-msys" ];then
    ./configure --prefix=$CCS_TARGET_ROOT
else
    ./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fi
make install -j4
if [ $? -ne 0 ];then
    exit 1
fi
#(cd $CCS_TARGET_ROOT/lib && rm libpng.a libpng.dll.a libpng.la)
#(cd $CCS_TARGET_ROOT/include && rm png.h pngconf.h pnglibconf.h)
    ]=],
}
