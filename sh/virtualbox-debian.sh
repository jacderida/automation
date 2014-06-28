#!/usr/bin/env bash

if [ ! -e /usr/bin/virtualbox ]; then
    wget --output-document=/tmp/virtualbox-4.3_4.3.12-93733~Ubuntu~raring_amd64.deb http://download.virtualbox.org/virtualbox/4.3.12/virtualbox-4.3_4.3.12-93733~Ubuntu~raring_amd64.deb
	dpkg -i /tmp/virtualbox-4.3_4.3.12-93733~Ubuntu~raring_amd64.deb
fi
