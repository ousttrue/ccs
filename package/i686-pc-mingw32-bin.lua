binaryPackage {
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
binaryPackage {
    name="gdb",
    host="i686-pc-mingw32",
    version="7.2",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/BaseSystem/GDB/GDB-7.2/gdb-7.2-1-mingw32-bin.tar.lzma",
    },
    depends={
        {"libexpat", "i686-pc-mingw32" },
    },
}
binaryPackage {
    name="libexpat",
    host="i686-pc-mingw32",
    version="2.0.1",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/expat/expat-2.0.1-1/libexpat-2.0.1-1-mingw32-dll-1.tar.gz",
    },
}
------------------------------------------------------------------------------
binaryPackage {
    name="libiconv",
    version="1.13.1",
    release="1",
    host="i686-pc-mingw32",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/libiconv/libiconv-1.13.1-1/libiconv-1.13.1-1-mingw32-dev.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/libiconv/libiconv-1.13.1-1/libiconv-1.13.1-1-mingw32-dll-2.tar.lzma",
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://jaist.dl.sourceforge.net/project/mingw/MinGW/libiconv/libiconv-1.13.1-1/libiconv-1.13.1-1-mingw32-dev.tar.lzma`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
    ]=],
}
binaryPackage {
    name="gettext",
    version="0.17-1",
    release="1",
    host="i686-pc-mingw32",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/gettext/gettext-0.17-1/gettext-0.17-1-mingw32-dev.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/gettext/gettext-0.17-1/libintl-0.17-1-mingw32-dll-8.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/gettext/gettext-0.17-1/libgettextpo-0.17-1-mingw32-dll-0.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/gettext/gettext-0.17-1/libasprintf-0.17-1-mingw32-dll-0.tar.lzma",
    },
}
binaryPackage {
    name="make",
    version="3.82",
    release="1",
    host="i686-pc-mingw32",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/make/make-3.82-mingw32/make-3.82-1-mingw32-bin.tar.lzma",
    },
    --post="cp $CCS_TARGET_ROOT/bin/ming32-make.exe $CCS_TARGET/bin/make.exe",
}
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
    name="pthreads",
    version="2.8.0.3",
    release="2",
    host="i686-pc-mingw32",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/pthreads-w32/pthreads-w32-2.8.0-3/libpthread-2.8.0-3-mingw32-dll-2.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MinGW/pthreads-w32/pthreads-w32-2.8.0-3/pthreads-w32-2.8.0-3-mingw32-dev.tar.lzma",
    },
}

