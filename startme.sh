#! /bin/bash

/usr/sbin/httpd -k start 
cd /opt/vdbench
./vdbench -f /etc/vdbench/vdbench-test.conf -o /var/www/html/$HOSTNAME
sleep 600
