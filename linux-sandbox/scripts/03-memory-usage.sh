#!/usr/bin/env bash
set -euo pipefail

echo "Memoria disponible"
free -h
echo
echo "Cinco procesos con mayor consumo de memoria"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6
