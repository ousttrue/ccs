srcPackage {
    name="lablgtk",
    version="2.14.2",
    url={
        "http://www.math.nagoya-u.ac.jp/~garrigue/soft/olabl/dist/lablgtk-2.14.2.tar.gz"
    },
    depends={
        "ocaml", "gtk+-bin", "lablgl", "gtkglarea",
    },
    sh=[=[
set -x
export FLEXLINKFLAGS="-L$CCS_TARGET_ROOT/lib -L`dirname $CCS_TARGET_ROOT`/lib"
export PATH="$CCS_TARGET_ROOT/bin:$CCS_TARGET_ROOT/lib/stublibs:$PATH"
export PREFIXED_INCLUDES="-I$CCS_TARGET_ROOT/include"
export OCAMLLIB="$CCS_TARGET_ROOT/lib"
export C_INCLUDE_PATH="$CCS_TARGET_ROOT/include"
export PKG_CONFIG_PATH="$CCS_TARGET_ROOT/../gtk+-bin/lib/pkgconfig:$PKG_CONFIG_PATH"
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=lablgtk-2.14.2.tar.gz
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir

cat config.make.mingw | perl -pe "\
s|^LIBDIR=.*|LIBDIR=$CCS_TARGET_ROOT/lib| || \
s|^USE_GL=.*|USE_GL=1| || \
s|C:/opt/gtk|$CCS_TARGET_ROOT/../gtk+-bin|g || \
s|^LABLGLDIR=.*|LABLGLDIR=$CCS_TARGET_ROOT/lib/lablGL| || \
s|^GTKGL_LIBS =|GTKGL_LIBS=-L$CCS_TARGET_ROOT/../gtk+-bin/lib -lgtkgl-2.0| || \
s|^prefix=.*|prefix=$CCS_TARGET_ROOT| || \
s|C:\\\\Program Files\\\\Objective Caml\\\\|$CCS_TARGET_ROOT/| || \
1; \
s|^(GTKCFLAGS=.*)|\\1\
 -I$CCS_TARGET_ROOT/../gtk+-bin/include/gtkgl-2.0\
 -I$CCS_TARGET_ROOT/../gtk+-bin/include/gdk-pixbuf-2.0\
| || \
1; \
s|librsvg-2\\b|librsvg-2.0|g || \
1 " > config.make

#./configure --prefix=$CCS_TARGET_ROOT --disable-gtktest || exit 1
#perl -i.bak -pe "\
#s|c:/devel/target/d7fd1ca0216656a73e6b25377ec11a8c|$CCS_TARGET_ROOT/../gtk+-bin| \
#" config.make

make || exit 1
make opt || exit 1
make install PREFIX=$CCS_TARGET_ROOT || exit 1
    ]=],
}
