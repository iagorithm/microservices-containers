# Linux sandbox

Contenedor Linux para abrir una consola, ejecutar scripts manuales y probar
tareas programadas. `cron` ejecuta `10-hourly-log.sh` al minuto cero de cada
hora y escribe en `/var/log/sandbox/hourly.log`.

```sh
docker compose up -d --build linux-sandbox
docker compose exec linux-sandbox bash
ls -la /opt/scripts
/opt/scripts/01-system-info.sh
/opt/scripts/08-json-report.sh
tail -f /var/log/sandbox/hourly.log
```

Para probar el script de cron sin esperar una hora:

```sh
docker compose exec linux-sandbox /opt/scripts/10-hourly-log.sh
docker compose exec linux-sandbox tail /var/log/sandbox/hourly.log
```

Los logs permanecen en el volumen `linux-sandbox-logs` aunque el contenedor se
vuelva a crear.
