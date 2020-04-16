#!/bin/bash
set -e

aws2 ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 993316282153.dkr.ecr.us-west-2.amazonaws.com

GIT_SHA=$(git rev-parse HEAD | cut -c1-8)
DOCKER_REPO="993316282153.dkr.ecr.us-west-2.amazonaws.com/ed-staging"
IMAGE_URL="$DOCKER_REPO:$GIT_SHA"

docker build -t $IMAGE_URL --pull .
docker push $IMAGE_URL
