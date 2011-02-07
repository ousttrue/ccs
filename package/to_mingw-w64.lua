toolchainPackage {
    name="toolchain",
    host="msys",
    target="x86_64-w64-mingw32",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw-w64/Toolchains%20targetting%20Win64/Automated%20Builds/mingw-w64-1.0-bin_i686-mingw_20101129.zip",
        "http://jaist.dl.sourceforge.net/project/mingw-w64/External%20binary%20packages%20(Win64%20hosted)/gdb/i686-w64-mingw32-gdb-7.1.90.20100730.zip",
    },
    post="sh $CCS_ROOT/script/mingw-w64_rename.sh"
}
