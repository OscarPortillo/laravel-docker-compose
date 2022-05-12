APP_NAME=myApp
PHP_BASH=laravel_php
DB_BASH=laravel_db

build: # build the project
	docker-compose build --pull --no-cache

start: # start the project
	docker-compose up -d

stop: # stop the project
	docker-compose stop

bash_php: # run the php bash script
	docker exec -it $(PHP_BASH) bash

bash_db: # run the db bash script
	docker exec -it $(DB_BASH) bash

create_app: # create the laravel app called myApp
	docker exec -it $(PHP_BASH) composer create-project --prefer-dist laravel/laravel $(APP_NAME)

set_key_app: # set the key for the app
	docker exec -it $(PHP_BASH) php artisan key:generate

update_composer: # update the composer
	docker exec -it $(PHP_BASH) composer update

