Docker - Tomcat - Nginx
===================

This project is a Docker container that runs Tomcat (on port 8080, not exposed) and nginx (on port 80, exposed). Put the war in `/var/lib/tomcat7/webapps/` with the name `ROOT.war`. Start the app with `service tomcat7 start && less /var/log/tomcat7/catalina.out`

The memory for Tomcat is set to 512M. To change this edit the file in /etc/default/tomcat7 with what you would like
