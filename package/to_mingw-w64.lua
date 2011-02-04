toolchainPackage {
    name="toolchain",
    host="msys",
    target="mingw-w64",
    url={
        "http://jaist.dl.sourceforge.net/project/mingw-w64/Toolchains%20targetting%20Win64/Automated%20Builds/mingw-w64-1.0-bin_i686-mingw_20101129.zip",
    },
    post="sh $DEM_ROOT/script/mingw-w64_rename.sh"
}
