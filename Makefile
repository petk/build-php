.PHONY: build

build:
	docker build --no-cache -t build-php -f Dockerfile .

run:
	make build
	docker run -it build-php sh
