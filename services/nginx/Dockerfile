# See: https://github.com/dockerfile/nginx/blob/master/Dockerfile
FROM ianchesal/base

RUN sh /opt/scripts/nginx/v5.6/install.sh

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
