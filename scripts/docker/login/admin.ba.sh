#!/bin/bash

set -e
set -v

echo "Logging in to [A]zure [C]ontainer [R]egistry: ${CONTAINER_REGISTRY_NAME}..."
docker login ${CONTAINER_REGISTRY_NAME}.azurecr.io --username ${CONTAINER_REGISTRY_USER_NAME} --password-stdin <<< ${CONTAINER_REGISTRY_USER_PASSWORD}

set +v
set +e
