#!/bin/sh

if [ "x"$DEM_ROOT=="x"];then
    echo "require environment variable DEM_ROOT"
    exit
fi
if [ "x"$DEM_WORK=="x"];then
    echo "require environment variable DEM_WORK"
    exit
fi

sh $DEM_ROOT/script/install_lua.sh
ln -sf $DEM_ROOT/host/msys/bin/dem $DEM_WORK/bin/dem

