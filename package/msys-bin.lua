groupPackage {
    name="system",
    host="i686-pc-msys",
    depends={
        "make", "bzip2-bin", "unzip", "gawk", 
        "diffutils", "patch", "sed", "grep",
        "findutils", "termcap", "libopenssl",
        "vim-7.2", "autotools", "perl", "gettext-bin",
    }
}
binaryPackage {
    name="bzip2-bin",
    host="i686-pc-msys",
    version="1.0.5",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/bzip2/bzip2-1.0.5-2/bzip2-1.0.5-2-msys-1.0.13-bin.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/bzip2/bzip2-1.0.5-2/libbz2-1.0.5-2-msys-1.0.13-dll-1.tar.lzma",
    },
}
binaryPackage {
    name="cygutils",
    host="i686-pc-msys",
    version="1.3.4",
    release="4",
    url={ 
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/cygutils/cygutils-1.3.4-4/cygutils-1.3.4-4-msys-1.0.13-bin.tar.lzma"
    },
}
binaryPackage {
    name="diffutils",
    host="i686-pc-msys",
    version="2.8.7.20071206cvs",
    release="3",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/diffutils/diffutils-2.8.7.20071206cvs-3/diffutils-2.8.7.20071206cvs-3-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="findutils",
    host="i686-pc-msys",
    version="4.4.2",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/findutils/findutils-4.4.2-2/findutils-4.4.2-2-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="gawk",
    host="i686-pc-msys",
    version="3.1.7",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/gawk/gawk-3.1.7-2/gawk-3.1.7-2-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="grep",
    host="i686-pc-msys",
    version="2.5.4",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/grep/grep-2.5.4-2/grep-2.5.4-2-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="iconv-bin",
    host="i686-pc-msys",
    version="1.13.1",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/libiconv/libiconv-1.13.1-2/libiconv-1.13.1-2-msys-1.0.13-dev.tar.lzma",
    },
}
binaryPackage {
    name="make",
    host="i686-pc-msys",
    version="3.81",
    release="3",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/make/make-3.81-3/make-3.81-3-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="mintty",
    host="i686-pc-msys",
    version="0.9.5",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/mintty/mintty-0.9.5/mintty-0.9.5-1-msys-1.0.16-bin.tar.lzma",
    },
}
binaryPackage {
    name="patch",
    host="i686-pc-msys",
    version="2.6.1",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/patch/patch-2.6.1-1/patch-2.6.1-1-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="sed",
    host="i686-pc-msys",
    version="4.2.1",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/sed/sed-4.2.1-2/sed-4.2.1-2-msys-1.0.13-bin.tar.lzma",
    }
}
binaryPackage {
    name="termcap",
    host="i686-pc-msys",
    version="0.20050421_1",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/termcap/termcap-0.20050421_1-2/libtermcap-0.20050421_1-2-msys-1.0.13-dev.tar.lzma",
        --"http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/termcap/termcap-0.20050421_1-2/libtermcap-0.20050421_1-2-msys-1.0.13-dll-0.tar.lzma",
    },
}
binaryPackage {
    name="unzip",
    host="i686-pc-msys",
    version="6.0.1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/unzip/unzip-6.0-1/unzip-6.0-1-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="vim-7.2",
    host="i686-pc-msys",
    version="7.2",
    release="2",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/vim/vim-7.2-2/vim-7.2-2-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="libopenssl",
    host="i686-pc-msys",
    version="1.0.0",
    release="1",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/openssl/openssl-1.0.0-1/libopenssl-1.0.0-1-msys-1.0.13-dev.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/openssl/openssl-1.0.0-1/openssl-1.0.0-1-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="libcrypt",
    host="i686-pc-msys",
    version="1.1_1",
    release="3",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/crypt/crypt-1.1_1-3/libcrypt-1.1_1-3-msys-1.0.13-dev.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/crypt/crypt-1.1_1-3/libcrypt-1.1_1-3-msys-1.0.13-dll-0.tar.lzma",
    },
}
groupPackage {
    name="autotools",
    version="0",
    host="i686-pc-msys",
    depends={
        "automake", "autoconf", "m4", "libtool-bin",
    },
}
binaryPackage {
    name="automake",
    version="1.11.1",
    release="1",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/automake/automake-1.11.1-1/automake-1.11.1-1-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="perl",
    version="5.6.1_2",
    release="2",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/perl/perl-5.6.1_2-2/perl-5.6.1_2-2-msys-1.0.13-bin.tar.lzma",
    },
    depends={
        "libcrypt",
    },
}
binaryPackage {
    name="m4",
    version="1.4.14",
    release="1",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/m4/m4-1.4.14-1/m4-1.4.14-1-msys-1.0.13-bin.tar.lzma",
    },
}
binaryPackage {
    name="autoconf",
    version="2.67",
    release="1",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/autoconf/autoconf-2.67-1/autoconf-2.67-1-msys-1.0.15-bin.tar.lzma",
    }
}
binaryPackage {
    name="libtool-bin",
    version="2.4",
    release="1",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/libtool/libtool-2.4-1/libtool-2.4-1-msys-1.0.15-bin.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/libtool/libtool-2.4-1/libltdl-2.4-1-msys-1.0.15-dll-7.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/libtool/libtool-2.4-1/libltdl-2.4-1-msys-1.0.15-dev.tar.lzma",
    },
}

binaryPackage {
    name="libexpat",
    version="2.0.1",
    release="1",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/expat/expat-2.0.1-1/libexpat-2.0.1-1-msys-1.0.13-dll-1.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/expat/expat-2.0.1-1/libexpat-2.0.1-1-msys-1.0.13-dll-1.tar.lzma",
    },
}
binaryPackage {
    name="libiconv",
    version="1.13.1",
    release="2",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/libiconv/libiconv-1.13.1-2/libiconv-1.13.1-2-msys-1.0.13-dev.tar.lzma"
    },
}
binaryPackage {
    name="openssh",
    version="5.4p1",
    release="1",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/openssh/openssh-5.4p1-1/openssh-5.4p1-1-msys-1.0.13-bin.tar.lzma"
    },
    depends={
        "libopenssl", "minires", "zlib-bin",
    },
}
binaryPackage {
    name="minires",
    version="1.02_1",
    release="2",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/minires/minires-1.02_1-2/libminires-1.02_1-2-msys-1.0.13-dll.tar.lzma",
    },
}
binaryPackage {
    name="zlib-bin",
    version="1.2.3",
    release="2",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/zlib/zlib-1.2.3-2/zlib-1.2.3-2-msys-1.0.13-dll.tar.lzma",
    },
}
binaryPackage {
    name="gettext-bin",
    version="0.17",
    release="2",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/gettext/gettext-0.17-2/gettext-0.17-2-msys-1.0.13-dev.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/gettext/gettext-0.17-2/gettext-0.17-2-msys-1.0.13-bin.tar.lzma",
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/gettext/gettext-0.17-2/libgettextpo-0.17-2-msys-dll-0.tar.lzma",
    },
    depends={
        "libexpat",
    },
}
binaryPackage {
    name="regex",
    version="1.20090805",
    release="2",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/regex/regex-1.20090805-2/libregex-1.20090805-2-msys-1.0.13-dev.tar.lzma",
        --"http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/regex/regex-1.20090805-2/libregex-1.20090805-2-msys-1.0.13-dll-1.tar.lzma",
    },
}
binaryPackage {
    name="coreutils",
    version="5.97",
    release="3",
    host="i686-pc-msys",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw/MSYS/BaseSystem/coreutils/coreutils-5.97-3/coreutils-5.97-3-msys-1.0.13-bin.tar.lzma",
    },
}

