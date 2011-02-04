srcPackage {
    name="irrlicht",
    version="1.7.2",
    url={
        "http://jaist.dl.sourceforge.net/project/irrlicht/Irrlicht%20SDK/1.7/1.7.2/irrlicht-1.7.2.zip",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
unzip -qo -d $DEM_ROOT/src /download/irrlicht-1.7.2.zip
cd $DEM_ROOT/src/irrlicht-1.7.2/source/Irrlicht
make CXXFLAGS="-D__GNUWIN32__ $CXXFLAGS"
    ]=],
}
