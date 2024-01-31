#!/bin/bash

set -e
set -v

docker build . -t ${CONTAINER_REGISTRY_NAME}/${REPO_NAME}:latest

set +v
set +e
