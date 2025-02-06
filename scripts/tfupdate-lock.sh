#!/usr/bin/env bash
set -euo pipefail

directory="${1?Must provide the directory to recurse over}"

tfupdate lock \
    --platform linux_amd64 \
    --platform linux_arm64 \
    --platform darwin_amd64 \
    --platform darwin_arm64 \
    --platform windows_amd64 \
    -r "${directory}"
