local sh_configure=[=[
set -x
cd "$CCS_ROOT"
mkdir -p src
rm -rf src/zlib-1.2.5
tar xzf "$CCS_DOWNLOAD/zlib-1.2.5.tar.gz" -C src
cd src/zlib-1.2.5
./configure --prefix="$CCS_TARGET_ROOT"
make install
]=]

local sh_win=[=[
set -x
cd "$CCS_ROOT"
mkdir -p src
rm -rf src/zlib-1.2.5
tar xzf "$CCS_DOWNLOAD/zlib-1.2.5.tar.gz" -C src
cd src/zlib-1.2.5
INCLUDE_PATH="$CCS_TARGET_ROOT/include" LIBRARY_PATH="$CCS_TARGET_ROOT/lib" BINARY_PATH="$CCS_TARGET_ROOT/bin" make -f win32/Makefile.gcc install
]=]

srcPackage {
    name="zlib",
    version="1.2.5",
    url={
        "http://zlib.net/zlib-1.2.5.tar.gz",
    },
    ["sh"]=sh_configure,
    ["sh_msys"]=sh_win,
    ["sh_i686-mingw32"]=sh_win,
    ["sh_mingw-w64"]=sh_win,
}

