--[ [
srcPackage {
    name="w3m",
    depends={
        "gc",
    },
    version="0.5.3",
    url={
        "http://www.sic.med.tohoku.ac.jp/~satodai/w3m/src/w3m-0.5.3.tar.gz",
    },
    sh=[=[
set -x
cd $CCS_TARGET_ROOT
mkdir -p src
tar xzf $CCS_DOWNLOAD/w3m-0.5.3.tar.gz -C src
cd src/w3m-0.5.3

cat << _PATCH_ | patch -p1
diff -Naru w3m-0.5.3.orig/main.c w3m-0.5.3/main.c
--- w3m-0.5.3.orig/main.c	2011-01-04 18:42:19.000000000 +0900
+++ w3m-0.5.3/main.c	2011-04-25 11:11:45.778152200 +0900
@@ -1598,6 +1598,15 @@
     }
 }
 
+/* A line with cursor is carried out first */
+DEFUN(csrFirstline, CSR_FIRSTLINE, "A line with cursor is carried out first")
+{
+    Currentbuf->topLine =
+        lineSkip(Currentbuf, Currentbuf->topLine, Currentbuf->cursorY, FALSE);
+    arrangeLine(Currentbuf);
+    displayBuffer(Currentbuf, B_NORMAL);
+}
+
 DEFUN(ctrCsrH, CENTER_H, "Move to the center line")
 {
     int offsetx;
diff -Naru w3m-0.5.3.orig/proto.h w3m-0.5.3/proto.h
--- w3m-0.5.3.orig/proto.h	2011-01-04 18:22:23.000000000 +0900
+++ w3m-0.5.3/proto.h	2011-04-25 11:12:25.132403100 +0900
@@ -14,6 +14,7 @@
 extern void lup1(void);
 extern void ldown1(void);
 extern void ctrCsrV(void);
+extern void csrFirstline(void);
 extern void ctrCsrH(void);
 extern void rdrwSc(void);
 extern void srchfor(void);
_PATCH_

./configure --host=i686-pc-cygwin --prefix=$CCS_TARGET_ROOT
make install
    ]=],
}
--]]
--[[
srcPackage {
    name="w3m",
    depends={
        "gc",
    },
    version="0.5.2",
    url={
        "http://www.sic.med.tohoku.ac.jp/~satodai/w3m/src/w3m-0.5.2.tar.gz",
    },
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xzf /download/w3m-0.5.2.tar.gz -C $DEM_ROOT/src
cd $DEM_ROOT/src/w3m-0.5.2
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET
make install
    ]=],
}
]]
