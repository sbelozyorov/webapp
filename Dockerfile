FROM tomcat:8-jre8
MAINTAINER sbelozyorov
COPY target/WebApp.war /usr/local/tomcat/webapps/webapp-latest.war
EXPOSE 8080

#FROM tomcat:9-jre8-alpine
#VOLUME /tmp
#ADD target/WebApp.war /usr/local/tomcat/webapps/app.war
#RUN sh -c 'touch /app.war'
#ENV JAVA_OPTS="-Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8787,suspend=n"
#EXPOSE 8080 8787
#ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=docker -jar /app.jar" ]

# Base Alpine Linux based image with OpenJDK JRE only
#FROM openjdk:8-jre-alpine
# copy application WAR (with libraries inside)
#COPY /home/travis/build/sbelozyorov/webapp/target/WebApp.war /app.war
# specify default command
#CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/app.war"]
