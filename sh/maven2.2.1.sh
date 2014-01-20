#!/usr/bin/env bash

if [ ! -d "/opt/apache-maven-2.2.1" ]; then
    mkdir /opt/maven2.2.1
    wget --output-document=/tmp/apache-maven-2.2.1-bin.tar.gz https://jacderida-software.s3.amazonaws.com/apache-maven-2.2.1-bin.tar.gz
    tar -xvf /tmp/apache-maven-2.2.1-bin.tar.gz -C /opt
    M2_HOME=/opt/apache-maven-2.2.1
    echo "export M2_HOME=$M2_HOME" >> ~/maven.sh
    echo "export PATH=$M2_HOME/bin:$PATH" >> /etc/profile
    chmod a+x ~/maven.sh
    mv ~/maven.sh /etc/profile.d/
fi
