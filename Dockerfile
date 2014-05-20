FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Sy --noconfirm --needed redis

ADD run /usr/bin/run
ADD redis.conf /etc/redis.conf

EXPOSE 6379

ENTRYPOINT ["redis-server"]
CMD ["/etc/redis.conf"]
