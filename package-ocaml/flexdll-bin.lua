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
