#!/usr/bin/env csh

echo vagrant | pw mod user root -h 0

pw group add vagrant -g 31337
pw user add vagrant -c vagrant -u 31337 -g vagrant -s /bin/csh
echo vagrant | pw mod user vagrant -h 0

mkdir -p /home/vagrant/.ssh
fetch --no-verify-peer -o /home/vagrant/.ssh/authorized_keys https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub
chown -R vagrant:vagrant /home/vagrant
chmod 0700 /home/vagrant/.ssh
chmod 0600 /home/vagrant/.ssh/authorized_keys


setenv ASSUME_ALWAYS_YES yes
pkg update
pkg install bash sudo

echo "vagrant ALL=(ALL) NOPASSWD: ALL" > /usr/local/etc/sudoers.d/01_vagrant
