#!/bin/bash

PROPIETARY=zahoriaut
IMAGE=zahori-server

if [ $# -eq 0 ]; then
    >&2 echo "Please, tell me the build version"
    exit 1
fi

VERSION=$1

echo "Backend build - started!!"

echo "----------- MVN Process -------------"
mvn clean package -U -Dversion=$VERSION

echo "----------- Docker image builder -------------"
DOCKER_BUILDKIT=1 docker build -t $PROPIETARY/$IMAGE:$VERSION .

echo "Backend build - finished!!"
