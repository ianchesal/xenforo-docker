FROM ianchesal/base

RUN yum -y update && yum -y install memcached

EXPOSE 11211

ENTRYPOINT ["/usr/bin/memcached"]

CMD ["-u", "root", "-m", "128", "-vv"]
