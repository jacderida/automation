#!/usr/bin/env bash

if [[ ! -d "/opt/packer-0.7.5" ]]; then
	wget --output-document=/tmp/packer-0.7.5_linux_amd64.zip https://dl.bintray.com/mitchellh/packer/packer_0.7.5_linux_amd64.zip
    mkdir /opt/packer-0.7.5
    mkdir /tmp/packer
	unzip /tmp/packer-0.7.5_linux_amd64.zip -d /tmp/packer
    cp /tmp/packer/** /opt/packer-0.7.5
    rm -rf /tmp/packer
    rm /tmp/packer-0.7.5_linux_amd64.zip
    rm -f /usr/local/bin/packer
    ln -s /opt/packer-0.7.5/packer /usr/local/bin/packer
fi
