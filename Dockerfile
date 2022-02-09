FROM openjdk:8-jdk-alpine
ARG JAVA_FILE
EXPOSE 8080
COPY ${JAVA_FILE} app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom",\
    "-Dspring.profiles.active=dev-server",\    
    "-jar","/app.jar"]
