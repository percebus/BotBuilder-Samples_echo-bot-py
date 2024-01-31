#!/bin/bash

set -e
set -v

docker run --network host -p 3798:3798 -t ${CONTAINER_REGISTRY_NAME}/${REPO_NAME}:latest

set +v
set +e
