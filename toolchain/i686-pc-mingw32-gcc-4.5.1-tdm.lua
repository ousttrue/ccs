------------------------------------------------------------------------------
-- tdm: http://tdm-gcc.tdragon.net/
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
    version="4.5.1",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/tdm-gcc/TDM-GCC%204.5%20series/4.5.1-tdm-1%20SJLJ/gcc-4.5.1-tdm-1-core.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/tdm-gcc/TDM-GCC%204.5%20series/4.5.1-tdm-1%20SJLJ/gcc-4.5.1-tdm-1-c++.tar.lzma",
    },
    post=[=[
cd $CCS_TARGET_ROOT/bin
cp gcc.exe cc.exe
    ]=],
}

