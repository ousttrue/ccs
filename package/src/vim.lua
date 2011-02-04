srcPackage {
    name="vim",
    version="7.3",
    url={
        "ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2",
    },
    depends_msys={
        "termcap", "libiconv"
    },
    sh_msys=[=[
set -x
mkdir -p $DEM_ROOT/src
tar xjf $DEM_ROOT/download/vim-7.3.tar.bz2 -C $DEM_ROOT/src
cd $DEM_ROOT/src/vim73
./configure --prefix=$DEM_ROOT/host/$DEM_TARGET --enable-multibyte --with-tlib=termcap --disable-gui
make 
mv src/auto/{pathdef.c,pathdef.c.orig}
sed -e 's/\r//' src/auto/pathdef.c.orig > src/auto/pathdef.c
make 
sed -e 's/\r//' src/auto/pathdef.c.orig > src/auto/pathdef.c
make install
    ]=]
}
