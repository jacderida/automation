#!/usr/bin/env bash

if [ ! -d "/opt/ack-2.12" ]; then
    mkdir /opt/ack-2.12
    curl http://beyondgrep.com/ack-2.12-single-file > /opt/ack-2.12/ack && chmod 0755 /opt/ack-2.12/ack
    ln -s /opt/ack-2.12/ack /usr/local/bin/ack
fi
