#!/usr/bin/env sh

set -e

if [[ $# -lt 1 ]]; then
    echo "usage: $0 <version>"
    exit 1
fi

VERSION=$1

cp -r ../../kinetic/backend/clients/0.1.0/r ./kinetic-r-client

docker buildx build \
  --push \
  --progress=plain \
  --platform linux/amd64,linux/arm64/v8 \
  --tag openstax/kinetic-enclave-development:$VERSION \
  .
