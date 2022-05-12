APP_NAME=myApp
PHP_BASH=laravel_php
DB_BASH=laravel_db

build:
	docker-compose build --pull --no-cache

start:
	docker-compose up -d

stop:
	docker-compose stop

bash_php:
	docker exec -it $(PHP_BASH) bash

create_app:
	docker exec -it $(PHP_BASH) composer create-project --prefer-dist laravel/laravel $(APP_NAME)

set_key_app:
	docker exec -it $(PHP_BASH) php artisan key:generate

update_composer:
	docker exec -it $(PHP_BASH) composer update

bash_db:
	docker exec -it $(DB_BASH) bash

change_permissions:
	sudo chmod -R 777 .env
	sudo chmod -R 777 storage

create_database:
	docker exec -it pruebadocker_db_1 mysql -u root -p root -e "CREATE DATABASE IF NOT EXISTS laravel DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;"
