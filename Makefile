default:

lint:
	./vendor/bin/phpstan analyse

fmt:
	./vendor/bin/phpcbf --ignore="./vendor" ./

cs:
	./vendor/bin/phpcs --ignore="./vendor" ./

test:
	./vendor/bin/phpunit ./tests

.PHONY: default setup lint fmt cs test
