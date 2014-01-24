#!/usr/bin/env bash

if [ ! -f "/usr/local/bin/s3cmd" ]; then
    mkdir /tmp/s3cmd-1.5.0-beta1
    wget --output-document=/tmp/s3cmd-1.5.0-beta1.tar.gz https://jacderida-software.s3.amazonaws.com/s3cmd-1.5.0-beta1.tar.gz
    tar -xvf /tmp/s3cmd-1.5.0-beta1.tar.gz -C /tmp
    present_directory=`pwd`
    cd /tmp/s3cmd-1.5.0-beta1
    python setup.py install
    cd $present_directory
    rm /tmp/s3cmd-1.5.0-beta1.tar.gz
fi
