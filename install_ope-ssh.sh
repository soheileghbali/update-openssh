#!/bin/bash

apt update
apt install build-essential zlib1g-dev libssl-dev -y
apt install libpam0g-dev libselinux1-dev -y

cd openssh-9.6p1/
./configure --with-md5-passwords --with-pam --with-selinux --with-privsep-path=/var/lib/sshd/ --sysconfdir=/etc/ssh
make
make install 

