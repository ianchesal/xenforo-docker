#!/bin/bash -ex

yum update
yum install --yes nginx
echo "\ndaemon off;" >> /etc/nginx/nginx.conf
chown -R www-data:www-data /var/lib/nginx
