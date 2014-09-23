#!/usr/bin/env bash

if [ ! -e /usr/lib/jvm/java-6-oracle/bin/java ]; then
	wget --output-document=/tmp/jdk-6u45-linux-x64.bin https://jacderida-software.s3.amazonaws.com/jdk-6u45-linux-x64.bin
	chmod a+x /tmp/jdk-6u45-linux-x64.bin
	/tmp/jdk-6u45-linux-x64.bin
	mv ./jdk1.6.0_45 ./java-6-oracle
	mkdir /usr/lib/jvm
	mv ./java-6-oracle /usr/lib/jvm
	update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/java-6-oracle/bin/java" 1
	update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/java-6-oracle/bin/javac" 1
	update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/java-6-oracle/bin/javaws" 1
	update-alternatives --config java
	update-alternatives --config javac
	update-alternatives --config javaws
    JAVA_HOME=/usr/lib/jvm/java-6-oracle
    JAVA_BIN=$JAVA_HOME/bin
fi
