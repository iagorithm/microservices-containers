#!/usr/bin/env bash
set -euo pipefail

pattern="${1:-.}"
echo "Procesos que coinciden con: $pattern"
ps -ef | awk -v pattern="$pattern" 'NR == 1 || tolower($0) ~ tolower(pattern)'
