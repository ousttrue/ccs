srcPackage {
    name="cscope",
    version="15.7a",
    url={
        "http://jaist.dl.sourceforge.net/project/cscope/cscope/15.7a/cscope-15.7a.tar.bz2",
        "http://cscope.sourceforge.net/cscope_maps.vim",
    },
    depends={
        "regex",
    },
 
    sh=[=[
set -x
mkdir -p $CCS_TARGET_ROOT/src
cd $CCS_TARGET_ROOT
archive=cscope-15.7a.tar.bz2
archive_dir=`extract $CCS_DOWNLOAD/$archive src`
cd src/$archive_dir
./configure --prefix=$CCS_TARGET_ROOT
if make install -j4;then
    true
else
    exit 1
fi
mkdir -p $HOME/.vim/plugin
if [ ! -e $HOME/.vim/plugin/cscope_maps.vim ];then
    cp $CCS_DOWNLOAD/cscope_maps.vim $HOME/.vim/plugin/
fi
    ]=],
}
