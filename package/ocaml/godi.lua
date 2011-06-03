srcPackage {
    name="godi",
    version="rocketboost-200912",
    url={
        "http://download.camlcity.org/download/godi-rocketboost-20091222.tar.gz"
    },

    sh=[=[
set -x

# clean up
rm -rf /opt/godi

# extract
mkdir -p /opt
cd /opt
tar xzf $CCS_DOWNLOAD/godi-rocketboost-20091222.tar.gz
cd godi-rocketboost-20091222

# patch
#(cd run/ocamlrun-3.09.3; cp config/m-nt.h config/m.h)
#(cd run/ocamlrun-3.09.3; cp config/s-nt.h config/s.h)
#(cd run/ocamlrun-3.09.3; cp config/Makefile.mingw config/Makefile)
#perl -i.bak -pe 's/\\bunix\\b/win32unix/' Makefile.godi
#(cd run/ocamlrun-3.09.3/otherlibs; perl -pe 's/include Makefile/include Makefile.nt/' unix/Makefile.godi > win32unix/Makefile.godi)
#cp $CCS_SELF_DIR/config_win32.h run/netsys-2.2.4/
#perl -i.bak -pe 's/(#define POSIX_SIGNALS)///\1/' run/netsys-2.2.4/caml_config.h

# stage1
unset OCAMLLIB
export PATH=/usr/bin:/bin:/usr/X11R6/bin:/cygdrive/c/WINNT/system32:/cygdrive/c/WINNT
#export BYTECCCOMPOPTS=-D_WIN32
./bootstrap --w32port mingw || exit 1

# stage 3
export PATH=/opt/godi/bin:/opt/godi/sbin:$PATH
./bootstrap_stage2 || exit 1
    ]=],
}
