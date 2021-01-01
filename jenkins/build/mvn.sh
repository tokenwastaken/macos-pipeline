#!/bin/sh

echo "*******************************"

echo Building Jar

echo "*******************************"
package=mvn -B -DskipTests clean package
WORKSPACE=/Users/iskender/Desktop/volumes/jenkins/workspace/macos-pipeline
POMDEPENDENCY=/Users/iskender/Desktop/volumes/jenkins/

docker run --rm  -v  $WORKSPACE/java-app:/app -v $POMDEPENDENCY/pomdependencies:/root/.m2 -w /app maven:3-alpine "$@"

#docker run --rm  -v  $WORKSPACE/java-app:/app   -w /app maven:3-alpine "$@"
