.RECIPEPREFIX +=
.DEFAULT_GOAL := help
.PHONY: *

help:
  @echo "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m"
  @grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

run: ## Usage: make run system=alpine
ifeq ($(system),debian-stretch)
  docker build --no-cache -t build-php/debian:stretch -f systems/debian-stretch/Dockerfile systems/debian-stretch
  docker run -it --rm -v `pwd`/php-src:/opt/php-src build-php/debian:stretch bash
else ifeq ($(system),alpine)
  docker build --no-cache -t build-php/debian:alpine -f systems/alpine/Dockerfile systems/alpine
  docker run -it --rm -v `pwd`/php-src:/opt/php-src build-php/alpine sh
else
  echo "Define system"
endif
