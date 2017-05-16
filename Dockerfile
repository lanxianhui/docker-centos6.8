FROM jdeathe/centos-ssh-apache-php:centos-6-httpd24u-php56u
MAINTAINER lanxianhui <lanxianhui@gmail.com>

ADD assets /assets
RUN bash /assets/setup.sh


CMD /usr/sbin/httpd-startup && /usr/bin/supervisord --configuration=/etc/supervisord.conf && /etc/init.d/myserver start
