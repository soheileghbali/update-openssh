#!/bin/bash

apt-get install build-essential zlib1g-dev libssl-dev -y


tar -xzvf openssh-9.6p1.tar.gz
cd openssh-9.6.1
./configure --with-privsep-path=/var/lib/sshd/ --sysconfdir=/etc/ssh
make
make install


systemctl restart ssh
systemctl restart sshd

