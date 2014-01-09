#!/usr/bin/env bash

function install_lib_event
{
    if [ ! -f "/usr/local/lib/libevent.la" ]; then
        wget --output-document=/tmp/libevent-2.0.21-stable.tar.gz https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
        tar -xvf /tmp/libevent-2.0.21-stable.tar.gz -C /tmp
        present_directory=`pwd`
        cd /tmp/libevent-2.0.21-stable
        ./configure && make
        make install
        cd $present_directory
        rm /tmp/libevent-2.0.21-stable.tar.gz
        rm -r -f /tmp/libevent-2.0.21-stable
    fi
}

function install_tmux
{
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
}

install_lib_event
install_tmux
