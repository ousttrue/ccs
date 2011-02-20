sh_win=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=`basename http://www.lua.org/ftp/lua-5.1.4.tar.gz`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
make mingw
cp etc/lua.hpp $CCS_TARGET_ROOT/include
cd src
cp lua.exe lua51.dll $CCS_TARGET_ROOT/bin
cp lua.h luaconf.h lauxlib.h lualib.h $CCS_TARGET_ROOT/include
cp liblua.a $CCS_TARGET_ROOT/lib
]=]

srcPackage {
    name="lua",
    version="5.1.4",
    url={
        "http://www.lua.org/ftp/lua-5.1.4.tar.gz",
    },

    ["sh_i686-pc-mingw32"]=sh_win,
    ["sh_x86_64-w64-mingw32"]=sh_win,
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=`basename http://www.lua.org/ftp/lua-5.1.4.tar.gz`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
make posix
cp etc/lua.hpp $CCS_TARGET_ROOT/include
cd src
cp lua.exe $CCS_TARGET_ROOT/bin
cp lua.h luaconf.h lauxlib.h lualib.h $CCS_TARGET_ROOT/include
cp liblua.a $CCS_TARGET_ROOT/lib
    ]=],
}

