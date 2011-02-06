#!/bin/sh

function setup_cygwin()
{
    echo "ccs setup for cygwin..."
    BASE_PATH=`dirname $0`
    CCS_ROOT=`cygpath -a $BASE_PATH/..`
    CCS_ROOT_WIN=`cygpath -am $BASE_PATH/..|sed 's/ /\\\\040/g'`

    # cp lua(with lfs) interpreter
    mkdir -p /usr/local/bin
    cp "$CCS_ROOT/bin/lua_cygwin.exe" /usr/local/bin/lua.exe

    # mount CCS_ROOT 
    if egrep -q "/ccs\s" /etc/fstab; then
        true
    else
        cat << _FSTAB_ >> /etc/fstab
# cross compile script
$CCS_ROOT_WIN /ccs some_fs binary 0 0
_FSTAB_
    fi

    # mount mingw 
    if egrep -q "/mingw\s" /etc/fstab; then
        true
    else
        cat << _FSTAB_ >> /etc/fstab
C:/mingw /mingw some_fs binary 0 0
_FSTAB_
    fi

    cat << _MESSAGE_

Cross Compile Script installed.

check /etc/fstab

[required environment variables]
add PATH to ${CCS_ROOT}bin
set CCS_TARGET to i686-mingw32

[optional environment variables]
CCS_DOWNLOAD: package download directory. default use \$CCS_ROOT/download.
_MESSAGE_
}

if [ `uname -o` = Cygwin ];then
    setup_cygwin
fi

