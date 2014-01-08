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

function install_netbeans {
	if [ ! -e /usr/local/netbeans-7.4/bin/netbeans ]; then
		wget --output-document=/tmp/vagrant/netbeans-7.4-javase-linux.sh https://jacderida-software.s3.amazonaws.com/netbeans-7.4-javase-linux.sh
		echo "Installing netbeans 7.4 in silent mode. This may take several minutes..."
		sh /tmp/vagrant/netbeans-7.4-javase-linux.sh --silent
	fi
}

function install_install4j {
	if [ ! -e /opt/install4j/bin/install4j ]; then
		wget --output-document=/tmp/vagrant/install4j_linux_5_1_7.deb https://jacderida-software.s3.amazonaws.com/install4j_linux_5_1_7.deb
		dpkg -i /tmp/vagrant/install4j_linux_5_1_7.deb
		echo "export INSTALL4J_HOME_V5_1=/opt/install4j5" >> ~/install4j_env.sh
		echo "export INSTALL4J_HOME_V5_1_1=/opt/install4j5" >> ~/install4j_env.sh
		chmod a+x ~/install4j_env.sh
		mv ~/install4j_env.sh /etc/profile.d/
	fi
}

initial_setup
install_apt_packages
install_netbeans
install_install4j
rm -r /tmp/vagrant
