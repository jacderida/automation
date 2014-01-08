#!/usr/bin/env bash

sleep 30
wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
dpkg -i puppetlabs-release-precise.deb
apt-get update
apt-get -y install puppet 
apt-get -y install git 
apt-get -y install ruby1.9.1
