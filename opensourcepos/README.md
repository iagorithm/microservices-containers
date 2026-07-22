# Open Source Point of Sale

Integración de prueba del proyecto público
[opensourcepos/opensourcepos](https://github.com/opensourcepos/opensourcepos).
Es un POS completo escrito en PHP/CodeIgniter y publicado bajo licencia MIT.
Utiliza una base de datos MySQL 8 independiente.

## Iniciar

```sh
docker compose up -d opensourcepos
```

Abre <http://localhost:8083>. Las credenciales iniciales del proyecto son:

- Usuario: `admin`
- Contraseña: `pointofsale`

El puerto y las credenciales de MySQL se pueden cambiar en un archivo `.env`
tomando `.env.example` como referencia.

## Estado y logs

```sh
docker compose ps opensourcepos opensourcepos-db
docker compose logs -f opensourcepos
docker compose logs -f opensourcepos-db
```

La base de datos, los archivos subidos y los logs quedan en volúmenes de
Docker. Detener los contenedores no borra esos datos.

## Detener

```sh
docker compose stop opensourcepos opensourcepos-db
```

No se debe usar `docker compose down -v` si se desea conservar la base de
datos. Las contraseñas predeterminadas son solo para desarrollo local y deben
cambiarse antes de exponer el servicio en una red.
