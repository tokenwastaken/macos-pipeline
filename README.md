# macos-pipeline

DevOps pipeline to build, test and deploy a simple java application.

containerized jenkins gets the job done using DinD, using maven images to build the jar then make the image.

Then the image is pushed to Dockerhub and gets deployed to the kubernetes cluster with pods and deployments.
