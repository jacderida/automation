#!/usr/bin/env bash

packer build template.json
mv packer_virtualbox-iso_virtualbox.box postgres-CentOS-6.5-x86_64.box
s3cmd put postgres-CentOS-6.5-x86_64.box s3://jacderida-vagrant-boxes/postgres-CentOS-6.5-x86_64.box
rm -rf packer_cache
