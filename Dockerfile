FROM ubuntu

MAINTAINER Ethan Hall <ethan@ehdev.io>

RUN apt-get -y update
RUN apt-get install -y openjdk-7-jre-headless tomcat7 nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD tomcat7.defaults /etc/default/tomcat7
EXPOSE 80

#ENTRYPOINT service tomcat7 start && service nginx start && tail -f /var/lib/tomcat7/logs/catalina.out
