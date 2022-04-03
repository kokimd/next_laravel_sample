init:
	docker-compose up -d --build
	docker-compose exec api composer install
	docker-compose exec api cp .env.example .env
	docker-compose exec api php artisan key:generate
	docker-compose exec api php artisan storage:link
	docker-compose exec api chmod -R 777 storage bootstrap/cache
	docker-compose exec front yarn
	docker-compose exec front yarn dev

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose buildapp-api:

api:
	docker-compose exec api bash

migrate:
	docker-compose exec api php artisan migrate

fresh:
	docker-compose exec api php artisan migrate:fresh --seed

seed:
	docker-compose exec api php artisan db:seed

## front

dev:
	docker-compose exec front yarn dev