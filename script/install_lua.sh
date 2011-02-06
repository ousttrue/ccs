#!/bin/sh

if [ `uname -s` = Linux ];then
    TARGET="posix"
elif [ `uname -o` = Cygwin ];then
    TARGET="posix"
else
    #TARGET="mingw"
    TARGET="posix"
fi

LFS_DIR=luafilesystem-1.5.0
LFS_ARCHIVE=${LFS_DIR}.tar.gz
LFS_URL=https://github.com/downloads/keplerproject/luafilesystem/${LFS_ARCHIVE}
if [ ! -e $CCS_ROOT/download/${LFS_ARCHIVE} ];then
    mkdir -p $CCS_ROOT/download
    (cd $CCS_ROOT/download && wget --no-check-certificate ${LFS_URL})
fi

LUA_DIR=lua-5.1.4
LUA_ARCHIVE=${LUA_DIR}.tar.gz
LUA_URL=http://www.lua.org/ftp/${LUA_ARCHIVE}
if [ ! -e $CCS_ROOT/download/${LUA_ARCHIVE} ];then
    (cd $CCS_ROOT/download && wget ${LUA_URL})
fi

if [ -e $CCS_WORK/bin/lua ];then
    echo "rebuild"
    #exit
fi

set -x
mkdir -p $CCS_WORK/src
cd $CCS_WORK/src

tar xzf $CCS_ROOT/download/${LFS_ARCHIVE}
tar xzf $CCS_ROOT/download/${LUA_ARCHIVE}

cp ${LFS_DIR}/src/lfs.{h,c} ${LUA_DIR}/src/
cd ${LUA_DIR}

patch -p0 < $CCS_ROOT/script/lfs.diff
if [ `uname -s` = Linux ];then
    nothing
else
    #TARGET="mingw"
    (cd src && mv Makefile Makefile.org && sed -e "s/-lm//" Makefile.org > Makefile)
fi

make clean $TARGET
set -x
#cp etc/lua.hpp $CCS_WORK/include
cd src
cp lua luac $CCS_WORK/bin || cp lua.exe luac.exe $CCS_WORK/bin
#cp liblua.a $CCS_WORK/lib
lua -v

