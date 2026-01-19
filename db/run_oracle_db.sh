#!/usr/bin/env bash
set -euo pipefail

DOCKER_APP_BIN="/Applications/Docker.app/Contents/Resources/bin"
DOCKER_BIN="${DOCKER_APP_BIN}/docker"
IMAGE_NAME="oracle-free-local"
CONTAINER_NAME="oracle-free"
HOST_DATA_DIR="./data"
ORACLE_PASSWORD="VIRTUKCH"
APP_USER="VIRTUKCH"
APP_USER_PASSWORD="VIRTUKCH"

export PATH="${DOCKER_APP_BIN}:${PATH}"

mkdir -p "${HOST_DATA_DIR}"

if "${DOCKER_BIN}" ps -a --format '{{.Names}}' | grep -xq "${CONTAINER_NAME}"; then
  "${DOCKER_BIN}" stop "${CONTAINER_NAME}"
  "${DOCKER_BIN}" rm "${CONTAINER_NAME}"
fi

if "${DOCKER_BIN}" images --format '{{.Repository}}:{{.Tag}}' | grep -xq "${IMAGE_NAME}:latest"; then
  "${DOCKER_BIN}" rmi "${IMAGE_NAME}:latest"
fi

"${DOCKER_BIN}" build --platform=linux/amd64 -t "${IMAGE_NAME}" .

"${DOCKER_BIN}" run -d \
  --platform=linux/amd64 \
  --name "${CONTAINER_NAME}" \
  -p 1521:1521 \
  -p 5500:5500 \
  -e ORACLE_PASSWORD="${ORACLE_PASSWORD}" \
  -e APP_USER="${APP_USER}" \
  -e APP_USER_PASSWORD="${APP_USER_PASSWORD}" \
  -v "${HOST_DATA_DIR}:/data" \
  "${IMAGE_NAME}"

"${DOCKER_BIN}" logs -f "${CONTAINER_NAME}"
