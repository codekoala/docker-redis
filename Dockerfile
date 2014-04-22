FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Sy --noconfirm --needed redis
ADD redis.conf /etc/redis.conf
ADD run /usr/bin/run

EXPOSE 6379
VOLUME ["/var/lib/redis"]

CMD ["/usr/bin/run"]
