FROM ianchesal/base

RUN yum update && yum --yes install memcached

EXPOSE 11211

ENTRYPOINT ["/usr/bin/memcached"]

CMD ["-u", "root", "-m", "128", "-vv"]
