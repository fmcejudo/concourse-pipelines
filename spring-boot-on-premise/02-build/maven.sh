#!/usr/bin/env bash

cd source_code || echo "missing input source_code: source_code"

export ROOT_FOLDER=$( pwd )
export REPO=repo

M2_HOME="${HOME}/.m2"
M2_CACHE="${ROOT_FOLDER}/maven"

echo "Generating symbolic links for caches"
[[ -d "${M2_CACHE}" && ! -d "${M2_HOME}" ]] && ln -s "${M2_CACHE}" "${M2_HOME}"

mvn package  -DskipTests ${MAVEN_ARGS}

cp target/*.jar ../build/

ls ../build