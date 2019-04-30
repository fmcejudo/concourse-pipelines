#!/usr/bin/env sh


source /docker-lib.sh

start_docker

$(aws ecr get-login --no-include-email --region eu-west-1)

docker build -t $ARTIFACT_NAME -f ./pipeline_code/spring-boot-aws/03-docker-build/Dockerfile ./source_code

docker tag $ARTIFACT_NAME:latest $REGISTRY/$ARTIFACT_NAME:latest

docker push $ARTIFACT_NAME:latest $REGISTRY/$ARTIFACT_NAME:latest