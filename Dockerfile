FROM jdeathe/centos-ssh-apache-php:centos-6-httpd24u-php56u
MAINTAINER lanxianhui <lanxianhui@gmail.com>





CMD ["/usr/sbin/httpd-startup", "/usr/bin/supervisord", "--configuration=/etc/supervisord.conf"]
