local sh_configure=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
rm -rf src/zlib-1.2.5
tar xzf "$CCS_DOWNLOAD/zlib-1.2.5.tar.gz" -C src
cd src/zlib-1.2.5
./configure --prefix="$CCS_TARGET_ROOT"
make install
]=]

local sh_win=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
rm -rf src/zlib-1.2.5
tar xzf "$CCS_DOWNLOAD/zlib-1.2.5.tar.gz" -C src
cd src/zlib-1.2.5
#(cd win32; patch < $CCS_ROOT/package/src/zlib.dll.patch)
cp $CCS_ROOT/package/src/zlib.Makefile Makefile
INCLUDE_PATH="$CCS_TARGET_ROOT/include" LIBRARY_PATH="$CCS_TARGET_ROOT/lib" BINARY_PATH="$CCS_TARGET_ROOT/bin" make install
]=]

srcPackage {
    name="zlib",
    version="1.2.5",
    url={
        "http://zlib.net/zlib-1.2.5.tar.gz",
    },
    depends={
        "libtool",
    },
    ["sh"]=sh_configure,
    ["sh_i686-pc-msys"]=sh_win,
    ["sh_i686-pc-mingw32"]=sh_win,
    --["sh_i686-w64-mingw32"]=sh_win,
    ["sh_x86_64-w64-mingw32"]=sh_win,
}

