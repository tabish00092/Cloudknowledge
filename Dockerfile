FROM centos:latest
MAINTAINER mohdtaish090@outlook.com
RUN sudo apt-get install -y httpd \
  zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*
RUN rm -rf__MACOSX markups-kindle kindle.zip 
CMD ["/user/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
