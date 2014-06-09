#!/usr/bin/env bash

echo -e "\nInstalling postgres public key..."
mkdir -m 0700 /home/postgres/.ssh
cd /home/postgres/.ssh
cat /tmp/keys/postgres_key.pub >> authorized_keys
chmod 0600 /home/postgres/.ssh/authorized_keys
chown -R postgres /home/postgres/.ssh
