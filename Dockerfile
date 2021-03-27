FROM java:8
VOLUME /tmp
COPY target/spring-petclinic-2.4.2.jar app.jar
EXPOSE 80
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
