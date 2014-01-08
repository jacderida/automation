#!/usr/bin/env bash

sleep 30
apt-get update
apt-get -y install gearman-job-server
ipaddress=`ip addr | awk '/inet / {sub(/\/.*/, "", $2); print $2}' | grep -v '127\.0\.0\.1'`
gearmand -d --listen=$ipaddress
