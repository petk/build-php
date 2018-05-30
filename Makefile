.RECIPEPREFIX +=
.DEFAULT_GOAL := help
.PHONY: *

help:
  @echo "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m"
  @grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

debian-8.3: ## Build and run Debian 8.3
  @docker build --no-cache -t build-php/debian:8.3 -f systems/debian-8.3/Dockerfile systems/debian-8.3
  @docker run -it --rm -v `pwd`/php-src:/opt/php-src build-php/debian:8.3 bash

debian-stretch: ## Build and run Debian Stretch
  @docker build --no-cache -t build-php/debian:stretch -f systems/debian-stretch/Dockerfile systems/debian-stretch
  @docker run -it --rm -v `pwd`/php-src:/opt/php-src build-php/debian:stretch bash

alpine: ## Build and run Alpine Linux
  docker build --no-cache -t build-php/alpine -f systems/alpine/Dockerfile systems/alpine
  docker run -it --rm -v `pwd`/php-src:/opt/php-src build-php/alpine sh

ubuntu-16.04: ## Build and run Ubuntu 16.04
  docker build --no-cache -t build-php/ubuntu:16.04 -f systems/ubuntu/Dockerfile systems/ubuntu-16.04
  docker run -it --rm -v `pwd`/php-src:/opt/php-src build-php/ubuntu:16.04 bash

ubuntu: ## Build and run latest stable Ubuntu
  docker build --no-cache -t build-php/ubuntu -f systems/ubuntu/Dockerfile systems/ubuntu
  docker run -it --rm -v `pwd`/php-src:/opt
