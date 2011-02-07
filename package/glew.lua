srcPackage {
    name="glew",
    version="1.5.8",
    url={
        "http://jaist.dl.sourceforge.net/project/glew/glew/1.5.8/glew-1.5.8.tgz",
    },
 
    sh=[=[
set -x
cd $CCS_TARGET_ROOT
mkdir -p src
tar xzf $CCS_DOWNLOAD/glew-1.5.8.tgz -C src
cd src/glew-1.5.8
make GLEW_DEST=$CCS_TARGET_ROOT install
    ]=],
}
