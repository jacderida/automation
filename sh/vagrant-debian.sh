#!/usr/bin/env bash

if [ ! -e /opt/vagrant/bin/vagrant ]; then
	wget --output-document=/tmp/vagrant_1.6.3_x86_64.deb https://dl.bintray.com/mitchellh/vagrant/vagrant_1.6.3_x86_64.deb
	dpkg -i /tmp/vagrant_1.6.3_x86_64.deb
    vagrant plugin install vagrant-aws
    vagrant box add aws https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box
    vagrant plugin install vagrant-rackspace
    vagrant box add rackspace https://github.com/mitchellh/vagrant-rackspace/raw/master/dummy.box
fi
