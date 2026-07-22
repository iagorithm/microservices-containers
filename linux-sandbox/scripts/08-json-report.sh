#!/usr/bin/env bash
set -euo pipefail

output="${1:-/workspace/system-report.json}"

jq -n \
  --arg hostname "$(hostname)" \
  --arg kernel "$(uname -r)" \
  --arg generated_at "$(date -u '+%Y-%m-%dT%H:%M:%SZ')" \
  --arg uptime "$(uptime -p 2>/dev/null || uptime)" \
  '{hostname: $hostname, kernel: $kernel, generated_at: $generated_at, uptime: $uptime}' \
  > "$output"

echo "Reporte creado: $output"
cat "$output"
