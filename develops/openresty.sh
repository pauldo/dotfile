#!/bin/sh
apt-get install libreadline-dev libncurses5-dev libpcre3-dev \
        libssl-dev perl make build-essential
cd /opt
wget https://openresty.org/download/openresty-1.11.2.1.tar.gz

cd openresty-1.11.2.1
./configure -j2 --with-debug --with-pcre-jit --with-ipv6 --with-http_iconv_module
make
make install

cp openresty.init.d /etc/init.d/openresty
chmod 755 /etc/init.d/openresty
