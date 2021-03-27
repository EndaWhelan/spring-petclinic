FROM java:8 tomcat:latest
VOLUME /tmp
ADD spring-petclinic-2.4.2.jar app.jar
COPY spring-petclinic-2.4.2.jar /usr/local/tomcat/webapps
EXPOSE 80
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
