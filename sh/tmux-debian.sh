#!/usr/bin/env bash

source ./ncurses-5.9.sh
source ./libevent-2.0.21-stable.sh

if [ ! -f "/usr/local/bin/tmux" ]; then
    wget --output-document=/tmp/tmux-1.8.tar.gz http://downloads.sourceforge.net/tmux/tmux-1.8.tar.gz
    tar -xvf /tmp/tmux-1.8.tar.gz -C /tmp
    present_directory=`pwd`
    cd /tmp/tmux-1.8
    ./configure && make
    make install
    cd $present_directory
    rm /tmp/tmux-1.8.tar.gz 
    rm -r -f /tmp/tmux-1.8
fi
