------------------------------------------------------------------------------
-- MinGW: http://sourceforge.net/projects/mingw
------------------------------------------------------------------------------
toolchainPackage {
    name="depends",
    target="i686-pc-mingw32",
    depends={
        {"binutils", "msys", "i686-pc-mingw32"},
        {"mingwrt", "i686-pc-mingw32"},
        {"w32api", "i686-pc-mingw32"},
    },
}
toolchainPackage {
    name="gcc",
    host="msys",
    target="i686-pc-mingw32",
    version="4.5.2",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GCC/Version4/gcc-4.5.2-1/gcc-core-4.5.2-1-mingw32-bin.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GCC/Version4/gcc-4.5.2-1/libgcc-4.5.2-1-mingw32-dll-1.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GCC/Version4/gcc-4.5.2-1/gcc-c++-4.5.2-1-mingw32-bin.tar.lzma",
    },
    post=[=[
cd $CCS_TARGET_ROOT/bin
cp gcc.exe cc.exe
    ]=],
}

