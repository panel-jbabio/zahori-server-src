#!/bin/bash

if [ $# -eq 0 ]; then
    >&2 echo "No arguments provided"
    exit 1
fi

echo "Build started!!!"

cd backend
./docker-build.sh $1
cd ../frontend
./docker-build.sh $1
cd ..

echo "Build finished!!!"