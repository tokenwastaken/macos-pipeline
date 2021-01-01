#!/bin/sh

echo "*********"
echo pushing
echo "*********"

IMAGE="mavenproject-macos"

echo logging in 

docker login -u wizzyy -p $PASS

echo "Tagging image"

docker tag $IMAGE:$BUILD_TAG wizzyy/$IMAGE:$BUILD_TAG

echo "Pushing image"

docker push wizzyy/$IMAGE:$BUILD_TAG

echo $IMAGE > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
scp /tmp/.auth iskender@192.168.0.16:/Users/iskender/Desktop/pipeline/jenkins/push/auth
