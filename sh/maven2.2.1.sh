#!/usr/bin/env bash

if [ ! -d "/opt/apache-maven-2.2.1" ]; then
    mkdir /opt/maven2.2.1
    wget --output-document=/tmp/apache-maven-2.2.1-bin.tar.gz https://jacderida-software.s3.amazonaws.com/apache-maven-2.2.1-bin.tar.gz
    tar -xvf /tmp/apache-maven-2.2.1-bin.tar.gz -C /opt
fi
