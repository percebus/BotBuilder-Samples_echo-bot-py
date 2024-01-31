#!/bin/bash

set -e
set -v

docker push ${CONTAINER_REGISTRY_URL}/${CONTAINER_IMAGE_NAME}:${CONTAINER_IMAGE_TAG}

set +v
set +e
