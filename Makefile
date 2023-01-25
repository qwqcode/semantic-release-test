PACKAGE_NAME := github.com/qwqcode/test
VERSION      ?= $(shell git describe --tags --abbrev=0)
COMMIT_HASH  := $(shell git rev-parse --short HEAD)
GO_VERSION   ?= 1.19.4

install:
	go mod tidy

.PHONY: install;