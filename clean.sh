#!/bin/sh
if [ -d build ]; then
    echo "deleting *.~ files"
    rm -fv .*~
    rm -fv *.*~
    rm -fv /*/*.*~
    echo "cd build"
    cd build
    if [ -f Makefile ]; then
	echo "make clean"
	make clean
    fi
    echo "cd .."
    cd ..
    echo "deleting build directory"
    rm -rfv build/
    echo "cleaned"
    echo "deleting debug directory"
    rm -rfv debug/
    echo "cleaned"
else
    echo "deleting *.~ files"
    rm -fv *.*~
    rm -fv /*/*.*~
    echo "cleaned"
    echo "no build directory to delete"
fi


