NAME := drupalwxt/gitlab-runner-helper
VERSION := $(or $(VERSION),$(VERSION),'latest')
PLATFORM := $(shell uname -s)

all: gitlab-runner-helper

build: all

ci: build

gitlab-runner-helper:
	docker build -t $(NAME):$(VERSION) .

.PHONY: \
	all \
	build \
	ci \
	gitlab-runner-helper
