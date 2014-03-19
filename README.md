Docker - Tomcat - Nginx
===================

This project is a Docker container that runs Tomcat (on port 8080, not exposed) and nginx (on port 80, exposed). Put the war in `/var/lib/tomcat7/webapps/` with the name `ROOT.war`. It will get exploded and served at startup.
