#!/usr/bin/env bash

if [ ! -d "/opt/eclipse-4.1.4" ]; then
	#wget --output-document=/tmp/eclipse-standard-luna-R-linux-gtk-x86_64.tar.gz https://jacderida-software.s3.amazonaws.com/eclipse-standard-luna-R-linux-gtk-x86_64.tar.gz
	tar -xvf /tmp/eclipse-standard-luna-R-linux-gtk-x86_64.tar.gz -C /tmp/
    cp -r /tmp/eclipse /opt/eclipse-4.1.4
    rm -rf /tmp/eclipse
    rm /tmp/eclipse-standard-luna-R-linux-gtk-x86_64.tar.gz
fi
