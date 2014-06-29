#!/usr/bin/env bash

if [ ! -e /usr/lib/jvm/java-7-oracle/bin/java ]; then
	wget --output-document=/tmp/jdk-7u45-linux-x64.gz https://jacderida-software.s3.amazonaws.com/jdk-7u45-linux-x64.gz
	tar -xvf /tmp/jdk-7u45-linux-x64.gz
	mv ./jdk1.7.0_45 ./java-7-oracle/
	mv ./java-7-oracle /usr/lib/jvm/
fi
