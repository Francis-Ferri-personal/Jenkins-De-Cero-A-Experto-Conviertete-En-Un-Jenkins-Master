#!/bin/bash

echo "###############"
echo "*** Testing ***"
echo "###############"

PROJ=/home/ferri_ripalda_francis/Jenkins-De-Cero-A-Experto-Conviertete-En-Un-Jenkins-Master/jenkins_home/workspace/pipeline-docker-maven
docker run --rm -v /root/.m2:/root/.m2 -v $PROJ/java-app:/app -w /app maven:3.8.1-jdk-11 "$@"