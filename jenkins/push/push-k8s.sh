#!/bin/sh



#after pushing the image to dockerhub we ssh into our workernode which is in this case the mac host that containers run on and we deploy pods and deployments which our main app runs on to minikube 


ssh iskender@192.168.0.16 'export IMAGE=$(sed -n '1p'/Users/iskender/Desktop/pipeline/push/.auth)'

ssh iskender@192.168.0.16 'export BUILD_TAG=$(sed -n '2p'/Users/iskender/Desktop/pipeline/push/.auth)'


ssh iskender@192.168.0.16 'kubectl create -f $PWD/maven-pod.yml'

ssh iskender@192.168.0.16 'kubectl create -f $PWD/maven-deploy.yml'
