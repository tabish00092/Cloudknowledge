FROM ubuntu:latest
MAINTAINER mohdtaish090@outlook.com
RUN apt-get install -y httpd
RUN apt-get install -y zip
RUN apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*
RUN rm -rf__MACOSX markups-kindle kindle.zip 
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
