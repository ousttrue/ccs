cd $CCS_TARGET_ROOT/bin
for f in x86_64-w64-mingw32-*;do
    dst=`echo $f | sed -e "s/x86_64-w64-mingw32-//"`
    echo $f
    echo "  -> $dst"
    cp $f $dst
done
cp gcc.exe cc.exe

