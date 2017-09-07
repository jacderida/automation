#!/usr/bin/env bash

apt-get install -y libpango1.0 libxft-dev libxinerama1 libxinerama-dev pkg-config

present_directory=$(pwd)
cd /tmp
curl -OL https://github.com/DaveDavenport/rofi/releases/download/0.15.4/rofi-0.15.4.tar.gz
tar -xvf rofi-0.15.4.tar.gz
cd rofi-0.15.4
./configure
make
make install
rm -rf rofi-0.15.4
rm -rf rofi-0.15.4.tar.gz
cd $present_directory
