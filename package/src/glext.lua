srcPackage {
    name="glext",
    version="0",
    url={
        "http://www.opengl.org/registry/api/glext.h",
    },
 
    sh=[=[
set -x
mkdir -p $CCS_DOWNLOAD/glext.h $CCS_TARGET_ROOT/include/GL
cp $CCS_DOWNLOAD/glext.h $CCS_TARGET_ROOT/include/GL/
    ]=],
}
