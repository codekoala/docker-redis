FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Sy --noconfirm --needed redis && \
    sysctl vm.overcommit_memory=1 > /dev/null && \
    chown -R redis:redis /var/lib/redis

ADD redis.conf /etc/redis.conf

EXPOSE 6379
VOLUME ["/var/lib/redis"]

ENTRYPOINT ["/usr/bin/redis-server"]
