#!/bin/bash

PROPIETARY=zahoriaut
IMAGE=zahori-frontend

if [ $# -eq 0 ]; then
    >&2 echo "Please, tell me the build version"
    exit 1
fi

VERSION=$1

echo "Frontend build - started!!"

echo "----------- Docker image builder -------------"
DOCKER_BUILDKIT=1 docker build -t $PROPIETARY/$IMAGE:$VERSION .

echo "Frontend build - finished!!"
