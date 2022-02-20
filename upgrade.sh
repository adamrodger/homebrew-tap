#!/usr/bin/env bash
set -euo pipefail

if [ "$1" == "" ]; then
    echo "Usage: upgrade.sh VERSION" 1>&2
fi

VERSION="$1"

echo "Checking gctx v${VERSION}"

APPLE_CHECKSUM=$(curl --silent -L "https://github.com/adamrodger/gcloud-ctx/releases/download/v${VERSION}/gctx-x86_64-apple-darwin.tar.gz" | sha256sum | cut -d' ' -f 1)
LINUX_CHECKSUM=$(curl --silent -L "https://github.com/adamrodger/gcloud-ctx/releases/download/v${VERSION}/gctx-x86_64-unknown-linux-musl.tar.gz" | sha256sum  | cut -d' ' -f 1)

echo "        apple-darwin: ${APPLE_CHECKSUM}"
echo "  unknown-linux-musl: ${LINUX_CHECKSUM}"

# this relies on the line numbers in the file. If you change them then you need to update here as well
sed -i "2s|version '.*'|version '${VERSION}'|" Formula/gctx.rb
sed -i "8s|sha256 \".*\"|sha256 \"${APPLE_CHECKSUM}\"|" Formula/gctx.rb
sed -i "11s|sha256 \".*\"|sha256 \"${LINUX_CHECKSUM}\"|" Formula/gctx.rb
