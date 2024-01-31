#!/bin/bash

set -e
set -v

DOCKER_CLI_OPTS='--no-cache'

docker build . ${DOCKER_CLI_OPTS} -t ${CONTAINER_IMAGE_NAME}:${CONTAINER_IMAGE_TAG}
docker build . ${DOCKER_CLI_OPTS} --target dev -t ${CONTAINER_IMAGE_NAME}.dev:${CONTAINER_IMAGE_TAG}

set +v
set +e
