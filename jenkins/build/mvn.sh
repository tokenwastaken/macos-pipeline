#!/bin/sh

echo "*******************************"

echo Building Jar

echo "*******************************"
package=mvn -B -DskipTests clean package
WORKSPACE=/var/jenkins_home/workspace/macos-pipeline

docker run --rm  -v  /var/jenkins_home/workspace/macos-pipeline/java-app:/app -v /var/jenkins_home/pomdependencies:/root/.m2/ -w /app maven:3-alpine "$@"

#docker run --rm  -v  $WORKSPACE/java-app:/app   -w /app maven:3-alpine "$@"
