#!/usr/bin/env bash

yum install -y kernel-devel
yum groupinstall -y "Development Tools"
echo -e "\nInstalling virtualbox guest additions..."
VBOX_VERSION=$(cat /tmp/.vbox_version)
cd /tmp
mount -o loop VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -f VBoxGuestAdditions_$VBOX_VERSION.iso
