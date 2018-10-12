FROM tomcat:8-jre8
MAINTAINER sbelozyorov
COPY ./target/WebApp.war /usr/local/tomcat/webapps/webapp-latest.war
EXPOSE 8080
