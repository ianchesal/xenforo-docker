# Nginx Dockerfile for xenForo

An attempt to build an nginx image that'll play nice with xenForo.

## Running with Attached Persistent Directories

    docker run -d -p 80:80 -p 443:443 -v <sites-enabled-dir>:/etc/nginx/conf.d -v <certs-dir>:/etc/nginx/certs -v <log-dir>:/var/log/nginx -v <html-dir>:/var/www/html dockerfile/nginx
