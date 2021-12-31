FROM openjdk:8-jre-alpine

EXPOSE 8181

COPY target/spring-petclinic-2.6.0-SNAPSHOT.jar spring-petclinic-2.6.0-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","spring-petclinic-2.6.0-SNAPSHOT.jar","--server.port=8181"]
