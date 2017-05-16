FROM jdeathe/centos-ssh-apache-php:centos-6-httpd24u-php56u
MAINTAINER lanxianhui <lanxianhui@gmail.com>


EXPOSE 80
EXPOSE 22
EXPOSE 443


CMD ["/usr/bin/supervisord", "--configuration=/etc/supervisord.conf"]
