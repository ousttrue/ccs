srcPackage {
    name="wglext",
    version="0",
    url={
        "http://www.opengl.org/registry/api/wglext.h"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/include/GL
cp $CCS_DOWNLOAD/wglext.h $CCS_TARGET_ROOT/include/GL/
    ]=],
}
