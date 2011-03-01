srcPackage {
    name="tolua++",
    version="1.0.93",
    url={
        "http://www.codenix.com/~tolua/tolua++-1.0.93.tar.bz2"
    },
    depends={
        "lua", "premake",
    },

    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=`basename http://www.codenix.com/~tolua/tolua++-1.0.93.tar.bz2`
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
cat << _PREMAKE4_ > premake4.lua
solution "tolua++"
configurations { "Release" }
configuration "Release"
do
    defines { "NDEBUG" }
    flags { "Optimize" }
    targetdir "Release"
end
includedirs {
    "include", 
    "$CCS_TARGET_ROOT/include",
}
libdirs {
    "$CCS_TARGET_ROOT/lib",
}

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
        "tolua++", "lua",
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
        "tolua++", "lua",
    }
end
_PREMAKE4_

premake4 gmake
if make; then
    cp Release/tolua.exe $CCS_TARGET_ROOT/bin/tolua++.exe
    cp Release/libtolua++.a $CCS_TARGET_ROOT/lib
    cp include/tolua++.h $CCS_TARGET_ROOT/include
else
    exit 1
fi
    ]=],
}

