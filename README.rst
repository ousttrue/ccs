====================
Cross Compile Script
====================
これは、MinGW環境でのアプリのビルドを自動化するスクリプトです。
WindowsXP(32bit)とWindows7(64bit)でわりと動きました。

-----------------------
参考にしたツール・サイト
-----------------------
- Gentoo Linux http://www.gentoo.org/ のemerge
- MinGW猫科研究所パック http://www.up-cat.net/MinGW%25C7%25AD%25B2%25CA%25B8%25A6%25B5%25E6%25BD%25EA%25A5%25D1%25A5%25C3%25A5%25AF.html

------
配布物
------

::

    bin(Msysのルートになる)
        lua.exe msysとリンクしたlua。luafilesystem http://keplerproject.github.com/luafilesystem/ を含めている
        ccs luaスクリプト。本体
    script
        雑多なスクリプト
    package
        パッケージ情報

----------------
使うディレクトリ
----------------
ccsの展開先に追加して、

- C:/download パッケージアーカイブのダウンロード用
- C:/i686-pc-mingw32 MinGWのtoolchain展開及びソースパッケージのインストール先 
- C:/x86_64-w64-mingw32 MinGW-W64 http://mingw-w64.sourceforge.net/ のtoolchain展開及びソースパッケージのインストール先

を使います。

------------
何ができるか
------------
- Msysの初期設定
- バイナリパッケージの展開(gccなど)
- ソースパッケージのビルド(SDL, gtk+, ocaml(32bit)など)

-------------------------
使い方 Msys展開(初回のみ)
-------------------------

script/setup.batを実行する
+++++++++++++++++++++++++
以下のショートカットが生成されるのでそこから各ターゲット向けのMsys環境に入れます。
- msys_to_msys
- msys_to_i686-pc-mingw32
- msys_to_x86_64-w64-mingw32

----------
CCSコマンド
----------
Cross Compile Script

::

    HOST to TARGET: i686-pc-msys to x86_64-w64-mingw32
    
    usage: ccs {list|install|toolchain} [args...]
   
gccをインストールする
++++++++++++++++++++
- i686-pc-msys(/usr)
- i686-pc-mingw32(/i686-pc-mingw32)
- x86_64-w64-mingw32(/x86_64-w64-mingw32)
の各環境向けのバイナリパッケージをダウンロードして展開します

::

    $ ccs toolchain

パッケージをインストールする
+++++++++++++++++++++++++++

::

    $ ccs install libpng

