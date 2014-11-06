#!/usr/bin/env bash

if [[ ! -d "/opt/packer-0.7.2" ]]; then
	wget --output-document=/tmp/packer-0.7.2_linux_amd64.zip https://dl.bintray.com/mitchellh/packer/packer_0.7.2_linux_amd64.zip
    mkdir /opt/packer-0.7.2
    mkdir /tmp/packer
	unzip /tmp/packer-0.7.2_linux_amd64.zip -d /tmp/packer
    cp /tmp/packer/** /opt/packer-0.7.2
    rm -rf /tmp/packer
    rm /tmp/packer-0.7.2_linux_amd64.zip
    ln -s /opt/packer-0.7.2/packer /usr/local/bin/packer
fi
