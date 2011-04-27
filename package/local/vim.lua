srcPackage {
    name="vim",
    version="7.3",
    url={
        "ftp://ftp.vim.org/pub/vim/unix/vim-7.3.tar.bz2",
    },
    depends_msys={
        "termcap", "libiconv"
    },
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
tar xjf $CCS_DOWNLOAD/vim-7.3.tar.bz2 -C src
cd src/vim73
./configure --host=$CCS_TARGET --prefix=$CCS_TARGET_ROOT --enable-multibyte --with-tlib=termcap
make 
mv src/auto/{pathdef.c,pathdef.c.orig}
sed -e 's/\r//' src/auto/pathdef.c.orig > src/auto/pathdef.c
make 
sed -e 's/\r//' src/auto/pathdef.c.orig > src/auto/pathdef.c
make install
    ]=]
}
