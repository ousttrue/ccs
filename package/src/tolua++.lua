srcPackage {
    name="tolua++",
    version="1.0.93",
    url={
        "http://www.codenix.com/~tolua/tolua++-1.0.93.tar.bz2"
    },
    depends={
        "lua",
    },

    sh=[=[
set -x
mkdir -p $DEM_ROOT/src
archive=`basename http://www.codenix.com/~tolua/tolua++-1.0.93.tar.bz2`
archive_dir=`extract /download/$archive $DEM_ROOT/src`
cd $DEM_ROOT/src/$archive_dir
DST=$DEM_ROOT/target/$DEM_TARGET

cat << _PREMAKE4_ > premake4.lua
solution "tolua++"
configurations { "Release" }
configuration "Release"
do
    defines { "NDEBUG" }
    flags { "Optimize" }
    targetdir "Release"
end

project "tolua++"
do
    kind "StaticLib"
    language "C"
    files {
        'src/lib/tolua_event.c',
        'src/lib/tolua_is.c',
        'src/lib/tolua_map.c',
        'src/lib/tolua_push.c',
        'src/lib/tolua_to.c',
    }
    buildoptions {
    }
    includedirs {
    }
    linkoptions {
    }
    libdirs {
    }
    links {
    }
end

project "tolua_bootstrap"
do
    kind "ConsoleApp"
    language "C"
    files {
        'src/bin/tolua.c',
        'src/bin/toluabind_default.c',
    }
    buildoptions {
    }
    includedirs {
    }
    linkoptions {
    }
    libdirs {
    }
    links {
        "lua", "tolua++",
    }
end

project "tolua"
do
    kind "ConsoleApp"
    language "C"
    files {
        'src/bin/tolua.c',
        'src/bin/toluabind.c',
    }
    prebuildcommands {
        "Release/tolua_bootstrap -C -H src/bin/toluabind.h -o src/bin/toluabind.c -n tolua src/bin/tolua_scons.pkg",
    }
    buildoptions {
    }
    includedirs {
    }
    linkoptions {
    }
    libdirs {
    }
    links {
        "lua", "tolua++",
    }
end
_PREMAKE4_

premake4 gmake
make
cp Release/tolua.exe $DST/bin/tolua++.exe
cp Release/libtolua++.a $DST/lib
cp include/tolua++.h $DST/include
    ]=],
}

