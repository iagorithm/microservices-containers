#!/usr/bin/env bash
set -euo pipefail

directory="${1:-/workspace}"
echo "Uso de disco para $directory"
df -h "$directory"
echo
du -sh "$directory"
