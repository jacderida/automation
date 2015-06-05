#!/usr/bin/env bash

if [ ! -d "/opt/apache-maven-3.3.3" ]; then
    mkdir /opt/maven3.3.3
    wget --output-document=/tmp/apache-maven-3.3.3-bin.tar.gz http://apache.mirror.anlx.net/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz
    tar -xvf /tmp/apache-maven-3.3.3-bin.tar.gz -C /opt
    rm -rf /usr/local/bin/mvn
    ln /opt/apache-maven-3.3.3/bin/mvn /usr/local/bin/mvn
fi
