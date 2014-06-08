echo -e "\nInstalling vagrant public key..."
mkdir -m 0700 /home/vagrant/.ssh
cd /home/vagrant/.ssh
wget --no-check-certificate -O authorized_keys https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant.users /home/vagrant/.ssh
echo -e "vagrant ALL=(ALL) NOPASSWD: ALL\n" >> /etc/sudoers
