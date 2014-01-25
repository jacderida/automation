#!/usr/bin/env bash 

# This is a text based browser. The only reason for installing it is
# because it's required by a maven plugin for vim.
if [ ! -d "/opt/lynx2-8-7" ]; then
    wget --output-document=/tmp/lynx2.8.7.tar.gz https://jacderida-software.s3.amazonaws.com/lynx2.8.7.tar.gz
    tar -xvf /tmp/lynx2.8.7.tar.gz -C /tmp
    present_directory=`pwd`
    cd /tmp/lynx2-8-7
    ./configure
    make
    mkdir /opt/lynx2-8-7
    cp ./lynx /opt/lynx2-8-7
    cp ./lynx.cfg /usr/local/etc
    cp ./samples/lynx.lss /usr/local/etc
    cd $present_directory
    rm -r /tmp/lynx2-8-7
    rm /tmp/lynx2.8.7.tar.gz
    echo "export PATH=/opt/lynx2-8-7:$PATH" >> /etc/profile
fi
