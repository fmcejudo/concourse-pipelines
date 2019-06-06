#!/usr/bin/env sh


ping google.es -c 4

source /docker-lib.sh

start_docker


echo "docker has started with version "
docker --version

$(aws ecr get-login --no-include-email --region eu-west-1)

echo "artifact prefix: $ARTIFACT_NAME"
echo "to be deployed in registry: $REGISTRY"

ping google.es -c 4

docker build -t $ARTIFACT_NAME -f ./pipeline_code/spring-boot-aws/03-docker-build/Dockerfile ./source_code

docker tag $ARTIFACT_NAME:latest $REGISTRY/$ARTIFACT_NAME:latest

docker push $ARTIFACT_NAME:latest $REGISTRY/$ARTIFACT_NAME:latest