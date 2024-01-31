#!/bin/bash

set -e
set -v

docker run --network host -p 3798:3798 -t ${CONTAINER_IMAGE_NAME}:${CONTAINER_IMAGE_TAG}

set +v
set +e
