#!/usr/bin/env bash

apt-get install -y sharutils pandoc dos2unix
present_path=$(pwd)
cd /tmp
git clone git://github.com/rkitover/vimpager
cd vimpager
make install
rm -rf vimpager
cd $present_path
