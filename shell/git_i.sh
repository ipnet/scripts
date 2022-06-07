#!/bin/bash

wget https://dl.ipcrystal.com/git/git-2.36.1.zip

mv git-2.36.1.zip /usr/local

cd /usr/local

yum group install -y "Development Tools"

yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel unzip

yum remove -y git

unzip git-2.36.1.zip

cd git-2.36.1

make prefix=/usr/local/git all

make prefix=/usr/local/git install

echo "export PATH=\$PATH:/usr/local/git/bin" >> /etc/profile

source /etc/profile