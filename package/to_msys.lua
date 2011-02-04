toolchainPackage {
    name="toolchain",
    host="msys",
    target="msys",
    version="0.1",
    depends={
        {"binutils", "msys", "msys"},
        {"gcc", "msys", "msys"},
        {"msys-core", "msys"},
        {"w32api", "msys"},
    },
}
toolchainPackage {
    name="binutils",
    host="msys",
    target="msys",
    version="2.19.51",
    release="3",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/binutils/binutils-2.19.51-3/binutils-2.19.51-3-msys-1.0.13-bin.tar.lzma",
    },
}
toolchainPackage {
    name="gcc",
    host="msys",
    target="msys",
    version="3.4.3",
    release="3",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/gcc/gcc-3.4.4-3/gcc-3.4.4-3-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="msys-core",
    host="msys",
    version="1.0.16",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/msys-core/msys-1.0.16-1/msysCORE-1.0.16-1-msys-1.0.16-dev.tar.lzma",
    },
}
binaryPackage {
    name="w32api",
    host="msys",
    version="3.14",
    release="3",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/w32api/w32api-3.14-3/w32api-3.14-3-msys-1.0.12-dev.tar.lzma",
    },
}
