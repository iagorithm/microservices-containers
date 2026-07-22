#!/usr/bin/env bash
set -euo pipefail

echo "Hostname: $(hostname)"
echo "Kernel: $(uname -srmo)"
echo "Uptime: $(uptime -p 2>/dev/null || uptime)"
echo "Fecha UTC: $(date -u '+%Y-%m-%dT%H:%M:%SZ')"
