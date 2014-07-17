packer build template.json
mv packer_virtualbox-iso_virtualbox.box base_server-CentOS-6.5-x86_64.box
aws s3 base_server-CentOS-6.5-x86_64.box s3://jacderida-vagrant-boxes/base_server-CentOS-6.5-x86_64.box --acl public-read
rm -rf packer_cache
