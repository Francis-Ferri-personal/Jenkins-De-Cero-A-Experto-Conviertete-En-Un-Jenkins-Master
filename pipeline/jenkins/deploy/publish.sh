#!/bin/bash

export REGISTRY="francisferri.codes:5043"
export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

docker login -u user1 -p $PASS $REGISTRY
cd ~/development/tmp-jenkins && docker-compose up -d