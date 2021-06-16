#!/bin/bash

HASH=$(git rev-parse --short HEAD)
IMAGE_NAME=apisearchio/elasticsearch-nginx-proxy:commit-$HASH
docker build -t "$IMAGE_NAME" .
docker push $IMAGE_NAME
