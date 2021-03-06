#!/bin/bash
echo "Logging in to Docker as $DOCKER_USERNAME"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker run --rm --privileged multiarch/qemu-user-static:register --reset
docker build -t tribunex/git-pull-pi:latest .
docker push tribunex/git-pull-pi:latest