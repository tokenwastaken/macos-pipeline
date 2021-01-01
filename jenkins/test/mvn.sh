#!/bin/sh

echo "*******************************"
echo Testing Jar
echo "*******************************"

package=mvn -B -DskipTests clean package
test=mvn test
WORKSPACE=/var/jenkins/workspace/macos-pipeline

docker run --rm  -v  $WORKSPACE/java-app:/app -v /var/jenkins/pomdependencies:/root/.m2/ -w /app maven:3-alpine "$@"
