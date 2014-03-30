#!/usr/bin/env bash

set -e

if [ ! -e "/usr/local/lib/libyaml.a" ]; then
    wget --output-document=/tmp/libyaml-0.1.5.tar.gz http://pyyaml.org/download/libyaml/yaml-0.1.5.tar.gz
    tar -xvf /tmp/libyaml-0.1.5.tar.gz -C /tmp
    present_directory=`pwd`
    cd /tmp/yaml-0.1.5
    ./configure && make && make install
    cd $present_directory
    rm /tmp/libyaml-0.1.5.tar.gz 
    rm -r -f /tmp/yaml-0.1.5
fi
