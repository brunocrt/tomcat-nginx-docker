FROM ubuntu

MAINTAINER Ethan Hall <ethan@ehdev.io>

RUN apt-get -y update
RUN apt-get install -y openjdk-7-jre-headless
RUN apt-get install -y tomcat7
RUN apt-get install -y nginx
RUN apt-get install -y git

ADD nginx.conf /etc/nginx/nginx.conf
EXPOSE 80

ENTRYPOINT service tomcat7 start && service nginx start && tail -f /var/lib/tomcat7/logs/catalina.out
