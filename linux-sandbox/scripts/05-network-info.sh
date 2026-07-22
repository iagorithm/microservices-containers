#!/usr/bin/env bash
set -euo pipefail

echo "Interfaces de red"
ip -brief address
echo
echo "Tabla de rutas"
ip route
echo
echo "DNS configurado"
cat /etc/resolv.conf
