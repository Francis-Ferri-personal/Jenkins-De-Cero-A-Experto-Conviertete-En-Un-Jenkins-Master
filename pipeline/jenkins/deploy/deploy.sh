#!/bin/bash
# Generamos el archivo
echo app > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

# Transfiere el archivo
scp -i /opt/gcp-minikube /tmp/.auth ferri_ripalda_francis@francisferri.codes:/tmp/.auth
scp -i /opt/gcp-minikube jenkins/deploy/publish.sh ferri_ripalda_francis@francisferri.codes:/tmp/publish
ssh -i /opt/gcp-minikube  ferri_ripalda_francis@francisferri.codes /tmp/publish