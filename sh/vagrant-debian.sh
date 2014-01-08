#!/usr/bin/env bash

if [ ! -e /opt/vagrant/bin/vagrant ]; then
	wget --output-document=/tmp/vagrant/vagrant_1.3.5_x86_64.deb https://jacderida-software.s3.amazonaws.com/vagrant_1.3.5_x86_64.deb
	dpkg -i /tmp/vagrant/vagrant_1.3.5_x86_64.deb
fi
