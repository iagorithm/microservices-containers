#!/usr/bin/env bash
set -euo pipefail

directory="${1:-/tmp}"
age_days="${2:-7}"

if [[ "$directory" == "/" ]]; then
  echo "No se permite limpiar el directorio raíz" >&2
  exit 1
fi

echo "Archivos regulares de más de $age_days días encontrados en $directory:"
find "$directory" -xdev -type f -mtime "+$age_days" -print
echo "Modo de prueba: este script solo muestra archivos; no los elimina."
