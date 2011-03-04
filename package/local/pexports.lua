srcPackage {
    name="pexports",
    version="",
    url={
        "http://tml.pp.fi/pexports-0.44.zip"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src/pexports-0.44
cd $CCS_TARGET_ROOT
archive=pexports-0.44.zip
archive_dir=`extract $CCS_DOWNLOAD/$archive src/pexports-0.44`
cd src/pexports-0.44
make LEX=flex
cp pexports.exe $CCS_TARGET_ROOT/bin
    ]=],
}
