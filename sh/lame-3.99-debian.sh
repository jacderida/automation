#!/usr/bin/env bash

present_directory=$(pwd)
cd /tmp
curl -O https://jacderida-software.s3.amazonaws.com/lame-3.99.5.tar.gz
tar -xvf lame-3.99.5.tar.gz
cd lame-3.99.5
./configure
make
make install
rm -rf lame-3.99.5
rm -rf lame-3.99.5.tar.gz
cd $present_directory
