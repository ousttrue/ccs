srcPackage {
    name="libxml2",
    version="2.7.8",
    url={
        "ftp://xmlsoft.org/libxml2/libxml2-sources-2.7.8.tar.gz"
    },
    depends={
        "zlib",
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=libxml2-sources-2.7.8.tar.gz
extract $CCS_DOWNLOAD/$archive src
cd src/libxml2-2.7.8
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT
fixlibtool
cat <<_PATCH_ | patch
--- testThreads.c.orig	2011-06-02 07:22:49 +0900
+++ testThreads.c	2011-06-02 07:23:11 +0900
@@ -107,7 +107,7 @@
 
 	for (i = 0; i < num_threads; i++) {
 	    results[i] = NULL;
-	    tid[i] = (pthread_t) -1;
+	    *((int*)&tid[i]) = -1;
 	}
 
 	for (i = 0; i < num_threads; i++) {
_PATCH_
make -j4 || exit 1
make install
    ]=],
}
