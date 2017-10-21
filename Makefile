.PHONY: run-alpine run-debian

run-alpine:
	docker build --no-cache -t build-php/alpine -f Dockerfile .
	docker run -it build-php/alpine sh

run-debian:
	docker build --no-cache -t build-php/debian -f Dockerfile-debian .
	docker run -it build-php/debian bash

run:  ## Usage: make run os=debian v=8.3
	docker build --no-cache -t build-php/$(os):$(v) -f Dockerfile-$(os)-$(v) .
	docker run -it build-php/$(os):$(v) bash
