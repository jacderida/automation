#!/usr/bin/env bash

if [ ! -e /opt/install4j5 ]; then
	wget --output-document=/tmp/vagrant/install4j_linux_5_1_7.deb https://jacderida-software.s3.amazonaws.com/install4j_linux_5_1_7.deb
	dpkg -i /tmp/vagrant/install4j_linux_5_1_7.deb
	echo "export INSTALL4J_HOME_V5_1=/opt/install4j5" >> ~/install4j_env.sh
	echo "export INSTALL4J_HOME_V5_1_1=/opt/install4j5" >> ~/install4j_env.sh
	chmod a+x ~/install4j_env.sh
	mv ~/install4j_env.sh /etc/profile.d/
fi
