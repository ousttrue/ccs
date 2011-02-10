//////////////////////////////////////////////////////////////////////////////
// ccs
//
// msys environment setup script
//////////////////////////////////////////////////////////////////////////////
var DOWNLOAD_DIR="C:\\download";

var ie = WScript.CreateObject("InternetExplorer.Application");
var fso = new ActiveXObject("Scripting.FileSystemObject");
var shell = WScript.CreateObject("WScript.Shell");
while(ie.Busy && ie.ReadyState==4){
    WScript.Sleep();
}

//////////////////////////////////////////////////////////////////////////////
// constants
//////////////////////////////////////////////////////////////////////////////
var HOST="http://jaist.dl.sourceforge.net/project/mingw";

var ARCHIVES=[
"/MSYS/BaseSystem/coreutils/coreutils-5.97-3/coreutils-5.97-3-msys-1.0.13-bin.tar.lzma",
"/MSYS/BaseSystem/libiconv/libiconv-1.13.1-2/libiconv-1.13.1-2-msys-1.0.13-dll-2.tar.lzma",
"/MSYS/BaseSystem/gettext/gettext-0.17-2/libintl-0.17-2-msys-dll-8.tar.lzma",
"/MSYS/BaseSystem/msys-core/msys-1.0.16-1/msysCORE-1.0.16-1-msys-1.0.16-bin.tar.lzma", "/MSYS/BaseSystem/regex/regex-1.20090805-2/libregex-1.20090805-2-msys-1.0.13-dll-1.tar.lzma",
"/MSYS/BaseSystem/termcap/termcap-0.20050421_1-2/libtermcap-0.20050421_1-2-msys-1.0.13-dll-0.tar.lzma",
"/MSYS/BaseSystem/xz/xz-4.999.9beta_20100401-1/liblzma-4.999.9beta_20100401-1-msys-1.0.13-dll-1.tar.gz",
"/MSYS/BaseSystem/xz/xz-4.999.9beta_20100401-1/xz-4.999.9beta_20100401-1-msys-1.0.13-bin.tar.gz",
"/MSYS/BaseSystem/tar/tar-1.23-1/tar-1.23-1-msys-1.0.13-bin.tar.lzma",
"/MSYS/BaseSystem/gzip/gzip-1.3.12-2/gzip-1.3.12-2-msys-1.0.13-bin.tar.lzma",
"/MSYS/BaseSystem/bash/bash-3.1.17-4/bash-3.1.17-4-msys-1.0.16-bin.tar.lzma",
"/MSYS/wget/wget-1.12-1/wget-1.12-1-msys-1.0.13-bin.tar.lzma",
"/MSYS/openssl/openssl-1.0.0-1/libopenssl-1.0.0-1-msys-1.0.13-dll-100.tar.lzma"
    ];

var sevenzip="C:/Program Files/7-Zip/7z.exe";

var BASE_DIR=shell.CurrentDirectory;
var splited=BASE_DIR.split("\\");
splited.pop();
var ROOT_DIR=splited.join("\\");
var SCRIPT_DIR=ROOT_DIR+"\\script";
var PACKAGE_DIR=ROOT_DIR+"\\package";
var MINGW_DIR="C:\\i686-pc-mingw32";
var MINGW64_DIR="C:\\x86_64-w64-mingw32";

function echo(l)
{
    WScript.Echo(l);
}

function each(o, f){
    for(var key in o){
        f(o[key]);
    }
}

function exec(cmd){
    var exec=shell.exec(cmd);
    var results=[];
    while(!exec.StdOut.AtEndOfStream){
        results.push(exec.StdOut.ReadLine());
    }
    return results;
}

function extract(base, lzma)
{
    echo("extract: "+lzma);

    exec(sevenzip+' e -y '+lzma);

    var splited=lzma.split('.');
    splited.pop();
    var tar=splited.join('.');
    //echo("extract: "+tar);
    var cmd=sevenzip+' x -y -o'+base+' '+tar;
    //echo(cmd);
    exec(cmd);
}

function download(url, dst){
    echo("download: "+url);
    var http = new ActiveXObject("Msxml2.XMLHTTP");
    http.Open("GET", url, false);
    http.Send(null);
    if(http.Status!=200){
        echo("fail to download");
        WScript.Quit();
    }

    //echo("write to: "+dst);
    var stream = WScript.CreateObject("Adodb.Stream");
    stream.Type=1;
    stream.Open();
    stream.Write(http.responseBody);
    stream.Savetofile(dst, 2);
}

function mkdir(dst)
{
    if(!fso.FolderExists(dst)){
        fso.CreateFolder(dst);
    }
}


mkdir(DOWNLOAD_DIR);
shell.CurrentDirectory=DOWNLOAD_DIR
each(ARCHIVES, function(path){
    var url=HOST+path;
    var splited=url.split("/");
    var dst=DOWNLOAD_DIR+"\\"+splited[splited.length-1];
    if(!fso.FileExists(dst)){
        download(url, dst);
    }
    extract(ROOT_DIR, dst);
});
echo("");

// etc/fstab
function createFstab(){
    var io=fso.CreateTextFile(ROOT_DIR+"\\etc\\fstab", true);
    echo("create: /etc/fstab");

    function writeFstab(io, src, dst)
    {
        mkdir(src);
        mkdir(ROOT_DIR+dst);
        var line=src.replace("\\", "/")+"\t"+dst;
        echo(line);
        io.WriteLine(line);
    }
    writeFstab(io, MINGW_DIR, "/i686-pc-mingw32");
    writeFstab(io, MINGW64_DIR, "/x86_64-w64-mingw32");
    io.Close();
}
createFstab();

// ccs.lua
function create_ccsrc(){
    var io=fso.CreateTextFile(SCRIPT_DIR+"\\ccsrc", true);
    echo("create: ccsrc.lua");
    io.WriteLine('if [ -e "/etc/profile" ];then');
    io.WriteLine('source "/etc/profile"');
    io.WriteLine('fi');
    io.WriteLine('');
    io.WriteLine('if [ -e "$HOME/.bash_profile" ];then');
    io.WriteLine('    source "$HOME/.bash_profile"');
    io.WriteLine('elif [ -e "$HOME/.bashrc" ];then');
    io.WriteLine('    source "$HOME/.bashrc"');
    io.WriteLine('fi');
    io.WriteLine('');
    io.WriteLine("export CCS_DOWNLOAD=/c/download");
    io.Close();
}
create_ccsrc();

// msys_to_i686-pc-mingw32
echo("create: msys_to_i686-pc-mingw32.lnk");
var sc=shell.CreateShortCut(ROOT_DIR+"\\msys_to_i686-pc-mingw32.lnk");
sc.TargetPath=ROOT_DIR+"\\bin\\bash";
sc.Arguments="/script/msys_to_i686-pc-mingw32";
sc.IconLocation=ROOT_DIR+"\\msys.ico";
sc.Save();

// msys_to_i686-pc-mingw32(mintty)
echo("create: msys_to_i686-pc-mingw32(mintty).lnk");
var sc=shell.CreateShortCut(ROOT_DIR+"\\msys_to_i686-pc-mingw32(mintty).lnk");
sc.TargetPath=ROOT_DIR+"\\bin\\mintty.exe";
sc.Arguments="/script/msys_to_i686-pc-mingw32";
sc.Save();

// msys_to_msys
echo("create: msys_to_msys.lnk");
var sc=shell.CreateShortCut(ROOT_DIR+"\\msys_to_msys.lnk");
sc.TargetPath=ROOT_DIR+"\\bin\\bash";
sc.Arguments="/script/msys_to_msys ";
sc.IconLocation=ROOT_DIR+"\\m.ico";
sc.Save();

// msys_to_x86_64-w64-mingw32
echo("create: msys_to_x86_64-w64-mingw32.lnk");
var sc=shell.CreateShortCut(ROOT_DIR+"\\msys_to_x86_64-w64-mingw32.lnk");
sc.TargetPath=ROOT_DIR+"\\bin\\bash";
sc.Arguments="/script/msys_to_x86_64-w64-mingw32 ";
//sc.IconLocation=ROOT_DIR+"\\m.ico";
sc.Save();

// msys_to_x86_64-w64-mingw32(mintty)
echo("create: msys_to_x86_64-w64-mingw32(mintty).lnk");
var sc=shell.CreateShortCut(ROOT_DIR+"\\msys_to_x86_64-w64-mingw32(mintty).lnk");
sc.TargetPath=ROOT_DIR+"\\bin\\mintty.exe";
sc.Arguments="/script/msys_to_x86_64-w64-mingw32";
sc.Save();

echo("");

echo("copy lua interpreter");
fso.CopyFile(ROOT_DIR+"/script/lua_msys.exe", ROOT_DIR+"/bin/lua.exe");

echo("setup msys");
var results=exec(ROOT_DIR+"/bin/bash.exe /script/msys_to_msys true");
for(var i in results){
    var line=results[i];
    echo(line);
}

mkdir(ROOT_DIR+"\\local");
mkdir(ROOT_DIR+"\\local\\bin");
mkdir(ROOT_DIR+"\\local\\include");
mkdir(ROOT_DIR+"\\local\\lib");
mkdir(ROOT_DIR+"\\local\\src");

