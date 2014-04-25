#!/usr/bin/env bash

set -e

function prepare_makefile
{
    operating_system=$(uname -s)
    case "$operating_system" in
        CYGWIN_NT-*)
            echo "Preparing makefile for use on Cygwin"
            sed -i '/^CFLAGS=-ggdb -Wall -DLINUX.*/c\#CFLAGS=-ggdb -Wall -DLINUX -D_LARGEFILE64_SOURCE -D' Makefile
            sed -i '/^#CFLAGS=-02 -Wall -fomit-frame-pointer -DCYGWIN/c\CFLAGS=-02 -Wall -fomit-frame-pointer -DCYGWIN' Makefile
            ;;
    esac
}

wget --output-document=/tmp/tree-1.7.0.tgz http://mama.indstate.edu/users/ice/tree/src/tree-1.7.0.tgz
tar -xvf /tmp/tree-1.7.0.tgz -C /tmp
present_directory=`pwd`
cd /tmp/tree-1.7.0
prepare_makefile
make && make install
cd $present_directory
rm /tmp/tree-1.7.0.tgz
rm -r -f /tmp/tree-1.7.0
