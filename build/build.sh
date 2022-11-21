#!/usr/bin/env sh

docker buildx build \
  --push \
  --progress=plain \
  --platform linux/amd64,linux/arm64/v8 \
  --tag openstax/kinetic-enclave-development:latest \
  .
