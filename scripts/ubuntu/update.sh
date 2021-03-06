#!/bin/bash -eux

# set a fast, german mirror
sed -ie 's,http://us.archive.ubuntu.com/ubuntu/,http://ubuntu.mirror.lrz.de/ubuntu/,g' /etc/apt/sources.list
sed -ie 's,http://security.ubuntu.com/ubuntu,http://ubuntu.mirror.lrz.de/ubuntu/,g' /etc/apt/sources.list

apt-get update
apt-get -y upgrade
