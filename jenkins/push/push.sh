#!/bin/sh

echo "*********"
echo pushing
echo "*********"

IMAGE="mavenprojectMACOS"

echo logging in 

docker login -u wizzyy -p $PASS

echo "Tagging image"

docker tag $IMAGE:$BUILD_TAG wizzyy/$IMAGE:$BUILD_TAG

echo "Pushing image"

docker push wizzyy/$IMAGE:$BUILD_TAG
