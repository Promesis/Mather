#!/bin/bash
if [$# -eq 0]
then
    printf "There are %d arguments just after you press ENTER.\n" $#
    printf "Usage: \nfirst,run \"chmod +x %s\";then,run \"%s\".\n" $0 $0    
    exit 1
else
    if [$# -eq 1 || $1 = "help"]
    then
        printf "GMath compile helper v1.0"
        printf "%s compile [mingw/vs2019/vs2017/vs2015/.../vs2010/borland/msys/nmake/unix/xcode]" $0
    elif [$# -eq 2 || $1 = "compile"]
    then
        case "$2" in
            "mingw") 
                cmake -G "MinGW Makefiles"
            ;;
            "vs2019")
                cmake -G "Visual Studio 16 2019"
            ;;
            "vs2017")
                cmake -G "Visual Studio 15 2017"
            ;;
            "vs2015")
                cmake -G "Visual Studio 14 2015"
            ;;
            "vs2013")
                cmake -G "Visual Studio 12 2013"
            ;;
            "vs2012")
                cmake -G "Visual Studio 11 2012"
            ;;
            "vs2010")
                cmake -G "Visual Studio 10 2010"
            ;;
            "borland")
                cmake -G "Borland Makefiles"
            ;;
            "msys")
                cmake -G "MSYS Makefiles"
            ;;
            "nmake")
                cmake -G "NMake Makefiles"
            ;;
            "unix")
                cmake -G "Unix Makefiles"
            ;;
            "xcode")
                cmake -G "Xcode"
            ;;
        esac
        make
    fi
fi


#Usage:\n
#first,run \"chmod +x $0\";\n
#then,run \"./$0".\n
