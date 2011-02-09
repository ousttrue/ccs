--[[
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
cd $CCS_TARGET_ROOT/
mkdir -p src
tar xJf $CCS_DOWNLOAD/libpng-1.5.0.tar.xz -C src
cd src/libpng-1.5.0
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT CFLAGS=-I${CCS_TARGET_ROOT}/include LDFLAGS=-L${CCS_TARGET_ROOT}/lib && make install
if [ $? -ne 0 ];then
    exit 1
fi
#(cd $CCS_TARGET_ROOT/lib && rm libpng.a libpng.dll.a libpng.la)
#(cd $CCS_TARGET_ROOT/include && rm png.h pngconf.h pnglibconf.h)
    ]=],
}
--]]
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
mkdir $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
rm -rf src/libpng-1.4.5
tar xJf $CCS_DOWNLOAD/libpng-1.4.5.tar.xz -C src
cd src/libpng-1.4.5
./configure --prefix=$CCS_TARGET_ROOT && make install
if [ $? -ne 0 ];then
    exit 1
fi
#(cd $CCS_TARGET_ROOT/lib && rm libpng.a libpng.dll.a libpng.la)
#(cd $CCS_TARGET_ROOT/include && rm png.h pngconf.h pnglibconf.h)
    ]=],
}
