#!/bin/sh

set -e

export DOCKER_BUILDKIT=${DOCKER_BUILDKIT-1}

echo "Build docker image restic/restic:latest"
docker build \
  --rm \
  --pull \
  --label org.opencontainers.image.source=https://github.com/ekristen/restic \
  --file docker/Dockerfile \
  --tag restic/restic:latest \
  .
