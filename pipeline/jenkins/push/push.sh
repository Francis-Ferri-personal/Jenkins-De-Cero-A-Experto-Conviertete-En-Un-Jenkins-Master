#!/bin/bash

echo "*************************"
echo "*** Preparing to push ***"
echo "*************************"
REGISTRY="francisferri.codes:5043"
IMAGE="app"

echo "*** Loggingg in ***"
docker login -u user1 -p $PASS $REGISTRY
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
