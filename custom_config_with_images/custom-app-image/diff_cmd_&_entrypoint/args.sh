#!/bin/bash

# Getting Image Versions details

IMAGE=$(docker images -f "reference:nodejs-apps:v1.0.0-alpine-todo")

# show image tags in DockerHub
echo
echo crane ls $IMAGE
crane ls $IMAGE

TAG=v1.0.0-alpine-todo

# Getting image size 

echo
echo docker inspect $IMAGE:$TAG
docker inspect $IMAGE:$TAG | jq -r '.' | tee docker-inspect-$IMAGE-$TAG.json

echo Getting size for $IMAGE:$TAG
size=$(docker inspect $IMAGE:$TAG | jq '.[].Size')
echo size=$size
size_in_mb=$((size / (1024*1024)))
echo size_in_mb=$size_in_mb MB
