#!/usr/bin/env bash

if [ ! -d "/opt/awk-2.12" ]; then
    mkdir /opt/awk-2.12
    curl http://beyondgrep.com/ack-2.12-single-file > /opt/awk-2.12/ack $$ chmod 0755 !#:3
    echo "export PATH=\"/opt/awk-2.12:$PATH\"" >> /etc/profile
fi
