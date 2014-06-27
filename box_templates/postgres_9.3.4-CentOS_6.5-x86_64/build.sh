#!/usr/bin/env bash

packer build template.json
mv packer_virtualbox-iso_virtualbox.box postgres_9.3.4-CentOS-6.5-x86_64.box
s3cmd put postgres_9.3.4-CentOS-6.5-x86_64.box s3://jacderida-vagrant-boxes/postgres_9.3.4-CentOS-6.5-x86_64.box
rm -rf packer_cache
