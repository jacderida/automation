#!/usr/bin/env bash

if [ ! -e /usr/local/netbeans-7.4/bin/netbeans ]; then
	wget --output-document=/tmp/vagrant/netbeans-7.4-javase-linux.sh https://jacderida-software.s3.amazonaws.com/netbeans-7.4-javase-linux.sh
	echo "Installing netbeans 7.4 in silent mode. This will take several minutes..."
	sh /tmp/vagrant/netbeans-7.4-javase-linux.sh --silent
fi
