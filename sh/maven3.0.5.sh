#!/usr/bin/env bash

if [ ! -d "/opt/apache-maven-3.0.5" ]; then
    mkdir /opt/maven3.0.5
    wget --output-document=/tmp/apache-maven-3.0.5-bin.tar.gz https://jacderida-software.s3.amazonaws.com/apache-maven-3.0.5-bin.tar.gz
    tar -xvf /tmp/apache-maven-3.0.5-bin.tar.gz -C /opt
    M2_HOME=/opt/apache-maven-3.0.5
fi
