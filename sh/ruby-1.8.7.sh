#!/usr/bin/env bash

set -e

wget --output-document=/tmp/ruby-1.8.7-p358.tar.gz http://www.mirrorservice.org/sites/ftp.ruby-lang.org/pub/ruby/ruby-1.8.7-p358.tar.gz
tar -xvf /tmp/ruby-1.8.7-p358.tar.gz -C /tmp
present_directory=`pwd`
cd /tmp/ruby-1.8.7-p358
./configure && make && make install
cd $present_directory
rm /tmp/ruby-1.8.7-p358.tar.gz 
rm -r -f /tmp/ruby-1.8.7-p358
