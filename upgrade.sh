#!/usr/bin/env bash
set -euo pipefail

if [ "${1:-}" == "" ]; then
    echo "Usage: upgrade.sh VERSION" 1>&2
    exit 1
fi

VERSION="$1"
BASE_URL="https://github.com/adamrodger/gcloud-ctx/releases/download/v${VERSION}"
FORMULA="Formula/gctx.rb"

echo "Fetching checksums for gctx v${VERSION}..."

MAC_X86=$(curl   --silent -L "${BASE_URL}/gctx-x86_64-apple-darwin.tar.gz"        | sha256sum | cut -d' ' -f1)
MAC_ARM=$(curl   --silent -L "${BASE_URL}/gctx-aarch64-apple-darwin.tar.gz"       | sha256sum | cut -d' ' -f1)
LINUX_X86=$(curl --silent -L "${BASE_URL}/gctx-x86_64-unknown-linux-musl.tar.gz"  | sha256sum | cut -d' ' -f1)
LINUX_ARM=$(curl --silent -L "${BASE_URL}/gctx-aarch64-unknown-linux-musl.tar.gz" | sha256sum | cut -d' ' -f1)

echo "         x86_64-apple-darwin: ${MAC_X86}"
echo "        aarch64-apple-darwin: ${MAC_ARM}"
echo "   x86_64-unknown-linux-musl: ${LINUX_X86}"
echo "  aarch64-unknown-linux-musl: ${LINUX_ARM}"

sed -i "s|version '.*'|version '${VERSION}'|"                   "${FORMULA}"
sed -i "s|MAC_X86_SHA   = '.*'|MAC_X86_SHA   = '${MAC_X86}'|"   "${FORMULA}"
sed -i "s|MAC_ARM_SHA   = '.*'|MAC_ARM_SHA   = '${MAC_ARM}'|"   "${FORMULA}"
sed -i "s|LINUX_X86_SHA = '.*'|LINUX_X86_SHA = '${LINUX_X86}'|" "${FORMULA}"
sed -i "s|LINUX_ARM_SHA = '.*'|LINUX_ARM_SHA = '${LINUX_ARM}'|" "${FORMULA}"

echo "Updated ${FORMULA} to v${VERSION}"
