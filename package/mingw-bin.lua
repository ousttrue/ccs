binaryPackage {
    name="libtool",
    version="2.4",
    release="1",
    host="i686-pc-mingw32",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/libtool/libtool-2.4-1/libtool-2.4-1-mingw32-bin.tar.lzma",
    },
}
binaryPackage {
    name="flexdll",
    version="0.26",
    host="i686-pc-mingw32",
    url={
        "http://alain.frisch.fr/flexdll/flexdll-bin-0.26.zip"
    },
    post=[[
set -x
cd $CCS_TARGET_ROOT
mv flex* bin/
    ]],
}
