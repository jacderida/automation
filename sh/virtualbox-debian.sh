#!/usr/bin/env bash

if [ ! -e /usr/bin/virtualbox ]; then
	wget --output-document=/tmp/vagrant/virtualbox-4.2_4.2.18-88780~Ubuntu~precise_amd64.deb https://jacderida-software.s3.amazonaws.com/virtualbox-4.2_4.2.18-88780~Ubuntu~precise_amd64.deb
	dpkg -i /tmp/vagrant/virtualbox-4.2_4.2.18-88780~Ubuntu~precise_amd64.deb
fi
