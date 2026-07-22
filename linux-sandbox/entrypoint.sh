#!/bin/sh
set -eu

touch /var/log/sandbox/cron.log /var/log/sandbox/hourly.log

# Ejecuta cron como demonio. El proceso final mantiene el contenedor disponible
# aunque ningún script de usuario se encuentre en ejecución.
crond -b -l 2 -L /var/log/sandbox/cron.log

exec tail -f /dev/null
