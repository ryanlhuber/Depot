#!/usr/bin/env bash
set -euo pipefail

if ! command -v bun >/dev/null 2>&1; then
  curl -fsSL https://bun.sh/install | bash
fi

BUN_BIN="${HOME}/.bun/bin"
if [ -d "${BUN_BIN}" ] && ! command -v bun >/dev/null 2>&1; then
  export PATH="${BUN_BIN}:${PATH}"
fi

bun --version
bun install
