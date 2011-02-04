srcPackage {
    name="lua",
    version="5.1.4",
    url={
        "http://www.lua.org/ftp/lua-5.1.4.tar.gz",
    },

    ["sh_i686-mingw32"]=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://www.lua.org/ftp/lua-5.1.4.tar.gz`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src
cd $archive_dir
make mingw
DST=$DEM_ROOT/target/$DEM_TARGET
cp etc/lua.hpp $DST/include
cd src
cp lua.exe lua51.dll $DST/bin
cp lua.h lauxlib.h lualib.h $DST/include
cp liblua.a $DST/lib
    ]=],

    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://www.lua.org/ftp/lua-5.1.4.tar.gz`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
make posix
    ]=],
}
