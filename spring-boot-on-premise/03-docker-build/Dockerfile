FROM openjdk:12-jdk
MAINTAINER francisco <cejudogomezf@ryanair.com>

ARG ENVIRONMENT

COPY ./artifact/*.jar /opt/deployment/app.jar
COPY source_code/ansible/config/application-${ENVIRONMENT}.properties /opt/deployment/application.properties

ENTRYPOINT java -jar /opt/deployment/app.jar --spring.config.location=/opt/deployment/application.properties
