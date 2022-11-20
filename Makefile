default:

install:
	docker compose up -d
	docker exec -it php-web-1 composer install

lint:
	./vendor/bin/phpstan analyse

fmt:
	./vendor/bin/phpcbf --ignore="./vendor" ./

cs:
	./vendor/bin/phpcs --ignore="./vendor" ./

test:
	./vendor/bin/phpunit ./tests

clean:
	rm -rf ./vendor composer.lock
	ls -la

.PHONY: default install lint fmt cs test clean
