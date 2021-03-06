SHAREDLIB = libz.la

PREFIX =
CC = $(PREFIX)gcc
CFLAGS = $(LOC) -O3 -Wall
EXTRA_CFLAGS = -DNO_VIZ

LD = $(CC)
LDFLAGS = $(LOC)

AR = $(PREFIX)ar
ARFLAGS = rcs

RC = $(PREFIX)windres
RCFLAGS = --define GCC_WINDRES

STRIP = $(PREFIX)strip

CP = cp -fp
INSTALL = $(CP)
RM = rm -f

OBJS = adler32.lo compress.lo crc32.lo deflate.lo gzclose.lo gzlib.lo gzread.lo gzwrite.lo infback.lo inffast.lo inflate.lo inftrees.lo trees.lo uncompr.lo zutil.lo

all: $(SHAREDLIB)

.SUFFIXES: .lo
.c.lo:
	libtool --mode=compile --tag=CC $(CC) $(CFLAGS) $(EXTRA_CFLAGS) -c -o $@ $<

$(SHAREDLIB): win32/zlib.def $(OBJS) zlibrc.lo
	libtool --mode=link --tag=CC $(CC) $(LDFLAGS) -o $@ win32/zlib.def $(OBJS) zlibrc.lo -no-undefined -rpath /$(CCS_TARGET_ROOT)/lib -avoid-version

zlibrc.lo: win32/zlib1.rc
	libtool --mode=compile --tag=CC $(RC) $(RCFLAGS) -o $@ win32/zlib1.rc


# BINARY_PATH, INCLUDE_PATH and LIBRARY_PATH must be set.
.PHONY: install uninstall clean

install: zlib.h zconf.h $(SHAREDLIB)
	-@mkdir -p $(CCS_TARGET_ROOT)/bin
	-@mkdir -p $(CCS_TARGET_ROOT)/include
	 @mkdir -p $(CCS_TARGET_ROOT)/lib
	 $(INSTALL) .libs/*.dll $(CCS_TARGET_ROOT)/bin
	 $(INSTALL) .libs/*.dll.a $(CCS_TARGET_ROOT)/lib
	 $(INSTALL) .libs/libz.a $(CCS_TARGET_ROOT)/lib
	 $(INSTALL) $(SHAREDLIB) $(CCS_TARGET_ROOT)/lib
	-$(INSTALL) zlib.h $(CCS_TARGET_ROOT)/include
	-$(INSTALL) zconf.h $(CCS_TARGET_ROOT)/include

clean:
	-$(RM) $(SHAREDLIB)
	-$(RM) *.lo
	-$(RM) *.exe
	-$(RM) *.dll
	-$(RM) *.a
	 $(RM) -r .libs

adler32.lo: zlib.h zconf.h
compress.lo: zlib.h zconf.h
crc32.lo: crc32.h zlib.h zconf.h
deflate.lo: deflate.h zutil.h zlib.h zconf.h
example.lo: zlib.h zconf.h
gzclose.lo: zlib.h zconf.h gzguts.h
gzlib.lo: zlib.h zconf.h gzguts.h
gzread.lo: zlib.h zconf.h gzguts.h
gzwrite.lo: zlib.h zconf.h gzguts.h
inffast.lo: zutil.h zlib.h zconf.h inftrees.h inflate.h inffast.h
inflate.lo: zutil.h zlib.h zconf.h inftrees.h inflate.h inffast.h
infback.lo: zutil.h zlib.h zconf.h inftrees.h inflate.h inffast.h
inftrees.lo: zutil.h zlib.h zconf.h inftrees.h
minigzip.lo: zlib.h zconf.h
trees.lo: deflate.h zutil.h zlib.h zconf.h trees.h
uncompr.lo: zlib.h zconf.h
zutil.lo: zutil.h zlib.h zconf.h
