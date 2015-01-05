#!/usr/bin/env bash

apt-get install -y cd-discid cdparanoia
src_path="/opt/rubyripper-0.6.2"
[[ -d "$src_path" ]] && rm -rf $src_path
cd /opt
curl -O https://rubyripper.googlecode.com/files/rubyripper-0.6.2.tar.bz2
tar jxvf rubyripper-0.6.2.tar.bz2
rm rubyripper-0.6.2.tar.bz2
cd $src_path
./configure --enable-lang-all --enable-gtk2 --enable-cli
make install
ln -s $src_path/rubyripper_cli.rb /usr/local/bin/rubyripper_cli
