#!/usr/bin/env bash

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
