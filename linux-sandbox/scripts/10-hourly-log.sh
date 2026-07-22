#!/usr/bin/env bash
set -euo pipefail

log_file="${HOURLY_LOG_FILE:-/var/log/sandbox/hourly.log}"
mkdir -p "$(dirname "$log_file")"
printf '%s | cron hourly check | host=%s | uptime=%s\n' \
  "$(date -u '+%Y-%m-%dT%H:%M:%SZ')" \
  "$(hostname)" \
  "$(cut -d. -f1 /proc/uptime)s" \
  >> "$log_file"
