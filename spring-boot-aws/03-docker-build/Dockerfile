FROM openjdk:11-jdk-slim
#FROM oracle/graalvm-ce:1.0.0-rc11

COPY artifact/*.jar /opt/deployment/app.jar


ENTRYPOINT ["java","-jar","/opt/deployment/app.jar"]
