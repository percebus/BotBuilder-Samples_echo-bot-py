#!/bin/bash

set -e
set -v

docker push ${CONTAINER_REGISTRY_NAME}/${REPO_NAME}

set +v
set +e
