FROM tomcat:latest

MAINTAINER Michal Skrzypczak

# Remove default applications

#RUN rm -rf /usr/local/tomcat/webapps/


#Copy Tomcat Manager conf files 

#COPY ./backend/tomcatManager/ /usr/local/tomcat/webapps/

#Copy conf files
#Allows to reach Tomcat manager (localhost:8080)
#Login:admin 
#Password:admin
COPY ./conf_files/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY ./conf_files/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

#Copy war application into tomcat dir
#It is reachable @ localhost:8080/SimpleWebApp 

COPY ./backend /usr/local/tomcat/webapps

EXPOSE 8080



