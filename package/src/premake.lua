srcPackage {
    name="premake",
    version="4.3",
    url={
        "http://jaist.dl.sourceforge.net/project/premake/Premake/4.3/premake-4.3-src.zip"
    },

    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=premake-4.3-src.zip
extract $CCS_DOWNLOAD/$archive src
cd src/premake-4.3
(cd build/gmake.windows/; make)
cp bin/release/premake4.exe $CCS_TARGET_ROOT/bin
    ]=],
}
