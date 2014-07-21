#!/usr/bin/env bash

packer build template.json
mv packer_virtualbox-iso_virtualbox.box postgres_9.1.13-CentOS-6.5-x86_64.box
aws s3 cp postgres_9.1.13-CentOS-6.5-x86_64.box s3://jacderida-vagrant-boxes/postgres_9.1.13-CentOS-6.5-x86_64.box --acl public-read
rm -rf packer_cache
