#!/bin/bash

#Copy the jar to the build location
cp -f java-app/target/*.jar jenkins/build/

echo "**********************"
echo building docker image
echo "**********************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
