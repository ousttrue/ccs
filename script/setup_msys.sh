if [ -e "/etc/profile" ];then
    source "/etc/profile"
fi

if [ -e "$HOME/.bashrc" ];then
    source "$HOME/.bashrc"
fi

function copy_rc_file()
{
    if [ ! -e "$HOME/$1" ];then
        cp /script/$1 $HOME/
    fi
}

cp /script/.inputrc $HOME/
copy_rc_file .vimrc
copy_rc_file .bashrc
copy_rc_file .screenrc
copy_rc_file .minttyrc

export CCS_TARGET=i686-pc-msys
ccs install system
ccs install mintty

