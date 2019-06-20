#!/usr/bin/env sh


source /docker-lib.sh

start_docker

$(aws ecr get-login --no-include-email --region eu-west-1)

ls source_code
ls artifact
tar -xvvf artifact/$ARTIFACT_NAME*.tar.gz -C source_code/

ls source_code
ls source_code/dist

docker build -t $ARTIFACT_NAME source_code

docker tag $ARTIFACT_NAME:latest $REGISTRY/$ARTIFACT_NAME:latest

docker push $REGISTRY/$ARTIFACT_NAME:latest
