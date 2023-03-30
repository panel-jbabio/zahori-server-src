#!/bin/bash

if [ $# -eq 0 ]; then
    >&2 echo "Please, introduce the build version"
    exit 1
fi

VERSION=$1

echo "Pushing backend"
docker push zahoriaut/zahori-server:%VERSION%
echo "Pushing frontend"
docker push zahoriaut/zahori-frontend:%VERSION%
echo "Push finished!!!"

