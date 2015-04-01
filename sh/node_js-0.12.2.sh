#!/usr/bin/env bash

if [ ! -d "/opt/node-v0.12.2-linux-x64" ]; then
    present_directory=$(pwd)
    cd /opt
    curl -O http://nodejs.org/dist/v0.12.2/node-v0.12.2-linux-x64.tar.gz
    tar -xvf node-v0.12.2-linux-x64.tar.gz
    rm -rf node-v0.12.2-linux-x64.tar.gz
    ln -s /opt/node-v0.12.2-linux-x64/bin/node /usr/local/bin/node
    ln -s /opt/node-v0.12.2-linux-x64/bin/npm /usr/local/bin/npm
    cd $present_directory
fi
