toolchainPackage {
    name="toolchain",
    host="msys",
    target="i686-pc-mingw32",
    depends={
        {"binutils", "msys", "i686-pc-mingw32"},
        {"gcc", "msys", "i686-pc-mingw32"},
        {"mingwrt", "i686-pc-mingw32"},
        {"w32api", "i686-pc-mingw32"},
    },
}
------------------------------------------------------------------------------
-- gcc-4.5.2
------------------------------------------------------------------------------
--[[
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
cd /target/i686-pc-mingw32/bin
cp gcc.exe cc.exe
    ]=],
}
--]]
toolchainPackage {
    name="gcc",
    target="i686-pc-mingw32",
    version="4.5.1",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/tdm-gcc/TDM-GCC%204.5%20series/4.5.1-tdm-1%20SJLJ/gcc-4.5.1-tdm-1-core.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/tdm-gcc/TDM-GCC%204.5%20series/4.5.1-tdm-1%20SJLJ/gcc-4.5.1-tdm-1-c++.tar.lzma",
    },
}

------------------------------------------------------------------------------
-- gcc-4.5
------------------------------------------------------------------------------
toolchainPackage {
    name="gcc",
    host="msys",
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
cd /target/i686-pc-mingw32/bin
cp gcc.exe cc.exe
    ]=],
}

------------------------------------------------------------------------------
-- binutils-2.21
------------------------------------------------------------------------------
toolchainPackage {
    name="binutils",
    host="msys",
    target="i686-pc-mingw32",
    version="2.21",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GNU-Binutils/binutils-2.21/binutils-2.21-2-mingw32-bin.tar.lzma",
    },
}
------------------------------------------------------------------------------
binaryPackage {
    name="mingwrt",
    host="i686-pc-mingw32",
    version="3.18",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/RuntimeLibrary/MinGW-RT/mingwrt-3.18/mingwrt-3.18-mingw32-dev.tar.gz",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/RuntimeLibrary/MinGW-RT/mingwrt-3.18/mingwrt-3.18-mingw32-dll.tar.gz",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GCC/Version4/gcc-4.5.0-1/libstdc++-4.5.0-1-mingw32-dll-6.tar.lzma",
    },
}
binaryPackage {
    name="w32api",
    host="i686-pc-mingw32",
    version="3.15",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/RuntimeLibrary/Win32-API/w32api-3.15/w32api-3.15-1-mingw32-dev.tar.lzma"
    },
}
