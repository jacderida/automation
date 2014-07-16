#!/usr/bin/env bash

if [[ ! -d "/opt/packer-0.6.0" ]]; then
	wget --output-document=/tmp/packer-0.6.0_linux_amd64.zip https://dl.bintray.com/mitchellh/packer/0.6.0_linux_amd64.zip
    mkdir /opt/packer-0.6.0
    mkdir /tmp/packer
	unzip /tmp/packer-0.6.0_linux_amd64.zip -d /tmp/packer
    cp /tmp/packer/** /opt/packer-0.6.0
    rm -rf /tmp/packer
    rm /tmp/packer-0.6.0_linux_amd64.zip
    echo "PATH=$PATH:/opt/packer-0.6.0" >> /etc/profile
	echo "export PATH" >> /etc/profile
fi
