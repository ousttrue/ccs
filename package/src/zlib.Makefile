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

prefix = /usr/local
exec_prefix = $(prefix)

OBJS = adler32.lo compress.lo crc32.lo deflate.lo gzclose.lo gzlib.lo gzread.lo gzwrite.lo infback.lo inffast.lo inflate.lo inftrees.lo trees.lo uncompr.lo zutil.lo

all: $(SHAREDLIB)

.SUFFIXES: .lo
.c.lo:
	libtool --mode=compile --tag=CC $(CC) $(CFLAGS) $(EXTRA_CFLAGS) -c -o $@ $<

zlibrc.lo: win32/zlib1.rc
	libtool --mode=compile --tag=CC $(RC) $(RCFLAGS) -o $@ win32/zlib1.rc

$(SHAREDLIB): win32/zlib.def $(OBJS) zlibrc.lo
	libtool --mode=link --tag=CC $(CC) $(LDFLAGS) -o $@ win32/zlib.def $(OBJS) zlibrc.lo -no-undefined -avoid-version -rpath /x86_64-w64-mingw32/local/lib


.PHONY: install uninstall clean

install: zlib.h zconf.h $(STATICLIB) $(IMPLIB)
	-@mkdir -p $(INCLUDE_PATH)
	-@mkdir -p $(LIBRARY_PATH)
	-if [ "$(SHARED_MODE)" = "1" ]; then \
		mkdir -p $(BINARY_PATH); \
		$(INSTALL) $(SHAREDLIB) $(BINARY_PATH); \
		$(INSTALL) $(IMPLIB) $(LIBRARY_PATH); \
	fi
	-$(INSTALL) zlib.h $(INCLUDE_PATH)
	-$(INSTALL) zconf.h $(INCLUDE_PATH)
	-$(INSTALL) $(STATICLIB) $(LIBRARY_PATH)

uninstall:
	-if [ "$(SHARED_MODE)" = "1" ]; then \
		$(RM) $(BINARY_PATH)/$(SHAREDLIB); \
		$(RM) $(LIBRARY_PATH)/$(IMPLIB); \
	fi
	-$(RM) $(INCLUDE_PATH)/zlib.h
	-$(RM) $(INCLUDE_PATH)/zconf.h
	-$(RM) $(LIBRARY_PATH)/$(STATICLIB)

clean:
	-$(RM) $(SHAREDLIB)
	-$(RM) *.exe
	-$(RM) *.lo *.o
	-$(RM) *.la *.a
	-$(RM) -r .libs

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
