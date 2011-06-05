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
    target="i686-pc-mingw32",
    version="4.5.0",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GCC/Version4/gcc-4.5.0-1/gcc-core-4.5.0-1-mingw32-bin.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GCC/Version4/gcc-4.5.0-1/libgcc-4.5.0-1-mingw32-dll-1.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GCC/Version4/gcc-4.5.0-1/gcc-c++-4.5.0-1-mingw32-bin.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/gmp/gmp-5.0.1-1/libgmp-5.0.1-1-mingw32-dll-10.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/mpc/mpc-0.8.1-1/libmpc-0.8.1-1-mingw32-dll-2.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/mpfr/mpfr-2.4.1-1/libmpfr-2.4.1-1-mingw32-dll-1.tar.lzma",
    },
    post=[=[
cd $CCS_TARGET_ROOT/bin
cp gcc.exe cc.exe
    ]=],
}

