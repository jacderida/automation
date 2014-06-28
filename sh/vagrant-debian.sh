#!/usr/bin/env bash

if [ ! -e /opt/vagrant/bin/vagrant ]; then
	wget --output-document=/tmp/vagrant_1.6.3_x86_64.deb https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3_x86_64.deb
	dpkg -i /tmp/vagrant_1.6.3_x86_64.deb
fi
