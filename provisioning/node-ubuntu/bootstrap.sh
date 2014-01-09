#!/usr/bin/env bash

apt-get update
apt-get install -y make
apt-get install -y vim
apt-get install -y libssl-dev
apt-get install -y g++
rm -rf /var/www
ln -fs /vagrant /var/www
wget http://nodejs.org/dist/v0.10.17/node-v0.10.17.tar.gz
tar xfz node-v0.10.17.tar.gz
cd node-v0.10.17
./configure
make
make install