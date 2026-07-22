#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 || ! -f "$1" ]]; then
  echo "Uso: $0 <archivo>" >&2
  exit 1
fi

sha256sum "$1"
