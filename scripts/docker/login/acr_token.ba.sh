#!/bin/bash

set -e
set -v

echo "Logging in to [A]zure [C]ontainer [R]egistry: ${CONTAINER_REGISTRY_NAME}..."

set -x
TOKEN=$(az acr login --name ${CONTAINER_REGISTRY_NAME} --expose-token --output tsv --query accessToken)
set +x

docker login ${CONTAINER_REGISTRY_URL} --username 00000000-0000-0000-0000-000000000000 --password-stdin <<< $TOKEN

set +v
set +e
