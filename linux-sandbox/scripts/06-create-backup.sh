#!/usr/bin/env bash
set -euo pipefail

source_dir="${1:-/workspace}"
destination_dir="${2:-/backups}"
timestamp="$(date -u '+%Y%m%dT%H%M%SZ')"
archive="$destination_dir/backup-$timestamp.tar.gz"

mkdir -p "$destination_dir"
tar -czf "$archive" -C "$source_dir" .
echo "Backup creado: $archive"
