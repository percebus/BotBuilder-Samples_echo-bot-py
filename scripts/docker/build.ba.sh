#!/bin/bash

set -e
set -v

docker build . -t ${CONTAINER_REGISTRY_URL}/${CONTAINER_IMAGE_NAME}:${CONTAINER_IMAGE_TAG}

set +v
set +e
