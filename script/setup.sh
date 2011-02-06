if [ -e "/etc/profile" ];then
    source "/etc/profile"
fi

if [ -e "$HOME/.bashrc" ];then
    source "$HOME/.bashrc"
fi

function copy_rc_file()
{
    if [ ! -e "$HOME/$1" ];then
        cp $CCS_ROOT/script/$1 $HOME/
    fi
}

cp $CCS_ROOT/script/.inputrc $HOME/
copy_rc_file .vimrc
copy_rc_file .bashrc
copy_rc_file .screenrc
copy_rc_file .minttyrc

export CCS_TARGET=msys
ccs install system
ccs install mintty

