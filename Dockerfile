FROM ubuntu:latest
RUN  apt update && apt install git -y
RUN  apt install apache2 -y
RUN  apt install nginx -y
CMD ["/usr/sbin/nginxctl","-D","FOREGROUND"]
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html/
VOLUME /var/log/apache2
ADD nano.tar.gz /var/www/html/
