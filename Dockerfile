FROM centos:7.9.2009

MAINTAINER "prachi@sk.com"
ARG name="sk"
RUN yum update -y && \
   yum install httpd netstat vim net-tool -y
COPY Dockerfile /root

COPY index.html /var/www/html 

WORKDIR /var/www/html

#changed for test
RUN echo "ServerName localhost" >> /etc/httpd/conf/httpd.conf

EXPOSE 80

EXPOSE 443

CMD ["httpd", "-D","FOREGROUND"]


