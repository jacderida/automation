#!/usr/bin/env bash

function initial_setup {
	apt-get update
	mkdir /tmp/vagrant
	chown -R vagrant /tmp/vagrant
}

function install_apt_packages {
	apt-get -y install python-pip
	apt-get -y install git
	apt-get -y install subversion
	apt-get -y --force-yes install git-svn
	apt-get -y install vim-gnome
	add-apt-repository -y ppa:rabbitvcs/ppa && apt-get update
	apt-get -y --force-yes install rabbitvcs-core rabbitvcs-nautilus3 rabbitvcs-cli
	apt-get -y install curl
	apt-get -y install xchat
}

initial_setup
install_apt_packages
rm -r /tmp/vagrant
