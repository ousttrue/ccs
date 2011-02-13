srcPackage {
    name="glext",
    version="0",
    url={
    },
 
    sh=[=[
set -x
cd $CCS_TARGET_ROOT/include/GL
wget http://www.opengl.org/registry/api/glext.h
    ]=],
}
