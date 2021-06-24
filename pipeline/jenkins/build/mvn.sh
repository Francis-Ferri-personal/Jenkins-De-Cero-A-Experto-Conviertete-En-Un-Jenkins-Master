#!/bin/bash
echo "*************"
echo "Building jar!"
echo "*************"

docker run --rm -v /root/.m2:/root/.m2 -v $PWD/java-app:/app -w /app -ti maven:3.8.1-jdk-11 "$@"