# Instalación

Primero debes clonar el respositorio

## Installation

```bash
git clone https://github.com/OscarPortillo/laravel-docker-compose.git
```

# app url:
```bash
localhost:8001
```

# phpmyadmin url:
```bash
localhost:8000
```

## Uso
#### Para la gestión de comando se usa Makefile

* Construye los contenedores.
```bash
make build
```

* Levanta los contenedores
```bash
make start
```

* Para los contenedores
```bash
make stop
```

* Para entrar al contenedor de PHP.
```bash
make bash_php
```

* Para entrar al contenedor de DB.
```bash
make bash_db
```

* crear la aplicación(laravel), por defecto se encontrará en el directorio myApp
```bash
make create_app
```

* Generar encrypted key para el proyecto
```bash
make set_key_app
```

* Actualizar el vendor
```bash
make update_composer
```

## .env configuración

Deberás configurar las variables de entorno según las que se han configurado en el docker-compose.yml, si no se ha editado el fichero por defecto se configurará de la siguiente manera:
``` bash
DB_CONNECTION=mysql
#  nombre del contenedor con mysql
DB_HOST=laravel_db
DB_PORT=3306
# base de datos y credenciales configuradas en el docker-compose.yml
DB_DATABASE=laravel
DB_USERNAME=admin
DB_PASSWORD=admin
```

# linkedin
https://www.linkedin.com/in/oscar-portillo-herrera-5a4a611a6/

## Contribuir

Los pull requests son bienvenidos, por favor abre un issue primero para discutir los cambios que te gustaría y poder mejorarlo.
