#!/usr/bin/env bash

set -e

if [ ! -f "/usr/local/bin/tmux" ]; then
    wget --output-document=/tmp/tmux-1.9a.tar.gz http://sourceforge.net/projects/tmux/files/tmux/tmux-1.9/tmux-1.9a.tar.gz/download
    tar -xvf /tmp/tmux-1.9a.tar.gz -C /tmp
    present_directory=`pwd`
    cd /tmp/tmux-1.9a
    ./configure && make && make install
    cd $present_directory
    rm /tmp/tmux-1.9a.tar.gz 
    rm -r -f /tmp/tmux-1.9a
fi
