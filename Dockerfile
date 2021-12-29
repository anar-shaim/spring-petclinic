# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

EXPOSE 8181

# copy jar into image
COPY target/spring-petclinic-2.6.0-SNAPSHOT.jar spring-petclinic-2.6.0-SNAPSHOT.jar

# run application with this command line 
ENTRYPOINT ["java","-jar","spring-petclinic-2.6.0-SNAPSHOT.jar","--server.port=8181"]
