.PHONY: run-alpine run-debian

run-alpine:
	docker build --no-cache -t build-php/alpine -f Dockerfile .
	docker run -it build-php/alpine sh

run-debian:
	docker build --no-cache -t build-php/debian -f Dockerfile-debian .
	docker run -it build-php/debian bash
