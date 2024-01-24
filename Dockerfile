FROM openjdk:17-jdk-slim
LABEL authors="yejin"

ADD /build/libs/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]