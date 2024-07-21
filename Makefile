php:
	docker compose exec php /bin/bash

up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose up -d --build

db:
	php bin/console doctrine:database:drop --force --if-exists
	php bin/console doctrine:database:create
	php bin/console doctrine:schema:create

clear:
	php bin/console cache:clear --no-warmup --no-debug
	php bin/console cache:warmup --no-debug

dump-env:
	composer dump-env dev

rm:
	rm -rf var/cache/dev/*