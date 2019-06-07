#!/usr/bin/env sh


source /docker-lib.sh

start_docker

$(aws ecr get-login --no-include-email --region eu-west-1)

ls source_code
mkdir source_code/target
ls source_code/target

cp artifact/$ARTIFACT_NAME*.jar source_code/target/

docker build -t $ARTIFACT_NAME source_code

docker tag $ARTIFACT_NAME:latest $REGISTRY/$ARTIFACT_NAME:latest

docker push $REGISTRY/$ARTIFACT_NAME:latest