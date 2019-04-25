#!/usr/bin/env sh

cd source_code || echo "missing input source_code: source_code"

mvn compile test ${MAVEN_ARGS}

