#!/usr/bin/env bash

if [[ ! -d "/opt/go-1.4.2-amd64" ]]; then
    wget --output-document=/tmp/go1.4.2.linux-amd64.tar.gz https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz
    mkdir /opt/go-1.4.2-amd64
    tar -xvf /tmp/go1.4.2.linux-amd64.tar.gz -C /tmp
    cp -r /tmp/go/** /opt/go-1.4.2-amd64
    rm /tmp/go1.4.2.linux-amd64.tar.gz
fi
