srcPackage {
    name="glib",
    version="2.26.1",
    url={
        "http://ftp.gnome.org/pub/gnome/sources/glib/2.26/glib-2.26.1.tar.bz2"
    },
    ["depends_i686-mingw32"]={
        {"gettext", "i686-mingw32"},
        {"libiconv", "i686-mingw32"},
    },
 
    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://ftp.gnome.org/pub/gnome/sources/glib/2.26/glib-2.26.1.tar.bz2`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET && make install
    ]=],
}
