#!/bin/bash -ex

yum update
yum --yes install nginx
echo "\ndaemon off;" >> /etc/nginx/nginx.conf
chown -R www-data:www-data /var/lib/nginx
