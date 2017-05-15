FROM jdeathe/centos-ssh:centos-6

MAINTAINER lanxianhui <lanxianhui@gmail.com>

ADD assets /assets
RUN bash /assets/setup.sh

EXPOSE 22
EXPOSE 443


CMD ["/usr/bin/supervisord", "--configuration=/etc/supervisord.conf"]
