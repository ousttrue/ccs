srcPackage {
    name="nkf",
    version="2.1.1",
    url={
        "http://en.sourceforge.jp/frs/redir.php?m=iij&f=%2Fnkf%2F48945%2Fnkf-2.1.1.tar.gz",
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=nkf-2.1.1.tar.gz
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
make 
cp nkf.exe $DEM_ROOT/host/$DEM_TARGET/bin/
    ]=],
}
