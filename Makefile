.RECIPEPREFIX := $(.RECIPEPREFIX) #
.DEFAULT_GOAL := help
.PHONY: *

help:
  @echo "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m"
  @grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Build image; usage: make build system={system-name}
  @test "$(system)"
  @docker build --no-cache -t build-php/$(system) -f systems/$(system)/Dockerfile systems/$(system)

run: ## Run Docker image
  @test "$(system)"
  @test "$(shell)"
  @docker run -it --rm -v `pwd`/php-src:/opt/php-src build-php/$(system) $(shell)

debian-7: ## Build and run Debian 7 (wheezy)
  make run system="$(MAKECMDGOALS)" shell=bash

debian-8.3: ## Build and run Debian 8.3
  make run system="$(MAKECMDGOALS)" shell=bash

debian-stretch: ## Build and run Debian Stretch
  make run system="$(MAKECMDGOALS)" shell=bash

alpine-3.7: ## Build and run Alpine Linux v3.7
  make run system="$(MAKECMDGOALS)" shell=sh

alpine-3.8: ## Build and run Alpine Linux v3.8
  make run system="$(MAKECMDGOALS)" shell=sh

alpine-3.18: ## Build and run Alpine Linux v3.18
  make run system="$(MAKECMDGOALS)" shell=sh

ubuntu-14.04:
  make run system="$(MAKECMDGOALS)" shell=bash

ubuntu-16.04: ## Build and run Ubuntu 16.04
  make run system="$(MAKECMDGOALS)" shell=bash

ubuntu: ## Build and run latest stable Ubuntu
  make run system="$(MAKECMDGOALS)" shell=bash

opensuse-13.2: ## Build and run OpenSuse 13.2
  make run system="$(MAKECMDGOALS)" shell=bash

fedora: ## Build and run latest Fedora
  make run system="$(MAKECMDGOALS)" shell=bash

centos-6: ## Build and run Centos 6
  make run system="$(MAKECMDGOALS)" shell=bash

centos-7: ## Build and run Centos 7
  make run system="$(MAKECMDGOALS)" shell=bash

amazonlinux: ## Build and run Amazonlinux
  make run system="$(MAKECMDGOALS)" shell=bash
