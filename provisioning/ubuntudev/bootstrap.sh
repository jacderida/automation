#!/usr/bin/env bash

function initial_setup {
	apt-get update
	mkdir /tmp/vagrant
	chown -R vagrant /tmp/vagrant
}

function install_apt_packages {
	apt-get -y install git
	apt-get -y install subversion
	apt-get -y install vim-gnome
}

function install_oracle_jdk_6 {
	wget --output-document=/tmp/vagrant/jdk-6u45-linux-x64.bin https://jacderida-software.s3.amazonaws.com/jdk-6u45-linux-x64.bin
	chmod a+x /tmp/vagrant/jdk-6u45-linux-x64.bin
	/tmp/vagrant/jdk-6u45-linux-x64.bin
	mv ./jdk1.6.0_45 ./java-6-oracle
	mkdir /usr/lib/jvm
	mv ./java-6-oracle /usr/lib/jvm
	update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-6-oracle/bin/java" 1
	update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/java-6-oracle/bin/javac" 1
	update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/java-6-oracle/bin/javaws" 1
	update-alternatives --config java
	update-alternatives --config javac
	update-alternatives --config javaws
	echo "JAVA_HOME=/usr/lib/jvm/java-6-oracle" >> /etc/profile
	echo "PATH=$PATH:$HOME/bin:$JAVA_HOME/bin" >> /etc/profile
	echo "export JAVA_HOME" >> /etc/profile
	echo "export JAVA_BIN" >> /etc/profile
	echo "export PATH" >> /etc/profile	
}

function install_oracle_jdk_7 {
	wget --output-document=/tmp/vagrant/jdk-7u45-linux-x64.gz https://jacderida-software.s3.amazonaws.com/jdk-7u45-linux-x64.gz
	tar -xvf /tmp/vagrant/jdk-7u45-linux-x64.gz
	mv ./jdk1.7.0_45 ./java-7-oracle/
	mv ./java-7-oracle /usr/lib/jvm/
}

function install_virtualbox {
	wget --output-document=/tmp/vagrant/virtualbox-4.2_4.2.18-88780~Ubuntu~precise_amd64.deb https://jacderida-software.s3.amazonaws.com/virtualbox-4.2_4.2.18-88780~Ubuntu~precise_amd64.deb
	dpkg -i /tmp/vagrant/virtualbox-4.2_4.2.18-88780~Ubuntu~precise_amd64.deb
}

function install_vagrant {
	wget --output-document=/tmp/vagrant/vagrant_1.3.5_x86_64.deb https://jacderida-software.s3.amazonaws.com/vagrant_1.3.5_x86_64.deb
	dpkg -i /tmp/vagrant/vagrant_1.3.5_x86_64.deb
}

function install_chrome {
	apt-get -y install libxss1
	wget --output-document=/tmp/vagrant/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i /tmp/vagrant/google-chrome-stable_current_amd64.deb
}

initial_setup
install_apt_packages
install_oracle_jdk_6
install_oracle_jdk_7
install_virtualbox
install_vagrant
install_chrome
rm -r /tmp/vagrant
