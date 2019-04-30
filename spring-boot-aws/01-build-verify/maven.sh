#!/usr/bin/env bash

cd source_code || echo "missing input source_code: source_code"

echo "Using MAVEN_OPTS: ${MAVEN_OPTS}"

mvn verify ${MAVEN_ARGS}

#starting from . ->
# .
# |
# |---> source_code
# |
# ----> build
#
# At the moment our directory is source_code, so, move up and put in build
cp target/*.jar ../build/

ls ../build