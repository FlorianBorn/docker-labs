FROM centos:centos7

RUN \
  yum update -y https \
  && yum install -y httpd mod_ssl

COPY public-html/index.html /var/www/html/index.html
COPY ssl.conf /etc/httpd/conf.d/ssl.con

#ENTRYPOINT  ["/usr/sbin/httpd", "-k", "start"]
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND -k start
