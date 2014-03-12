#!/usr/bin/env bash

if [ ! -f "/usr/bin/tic" ]; then
    wget --output-document=/tmp/ncurses-5.9.tar.gz http://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz
    tar -zxf /tmp/ncurses-5.9.tar.gz -C /tmp
    present_directory=`pwd`
    cd /tmp/ncurses-5.9
    ./configure --prefix=/usr
    make && make install
    cd $present_directory
    rm -r -f /tmp/ncurses-5.9
fi
