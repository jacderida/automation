#!/usr/bin/env bash

if [ ! -e /opt/google/chrome/google-chrome ]; then
	apt-get -y install libxss1
	wget --output-document=/tmp/vagrant/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i /tmp/vagrant/google-chrome-stable_current_amd64.deb
fi
