PACKAGE_NAME := github.com/qwqcode/test
VERSION      ?= $(shell git describe --tags --abbrev=0)
COMMIT_HASH  := $(shell git rev-parse --short HEAD)
GO_VERSION   ?= 1.19.4

install:
	go mod tidy

# @see https://github.com/goreleaser/goreleaser/issues/910
release:
	@if ! command -v git-chglog &> /dev/null; then \
		go install github.com/git-chglog/git-chglog/cmd/git-chglog@latest; \
	fi
	git-chglog ${VERSION} > release-notes.md
	@if [ ! -f ".release-env" ]; then \
		echo "\033[91m.release-env is required for release\033[0m";\
		exit 1;\
	fi
	docker run \
		--rm \
		--privileged \
		-e CGO_ENABLED=1 \
		--env-file .release-env \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v `pwd`:/go/src/$(PACKAGE_NAME) \
		-v `pwd`/sysroot:/sysroot \
		-w /go/src/$(PACKAGE_NAME) \
		ghcr.io/goreleaser/goreleaser-cross:v${GO_VERSION} \
		release --rm-dist --skip-validate \
		--release-notes release-notes.md

changelog:
	@if ! command -v git-chglog &> /dev/null; then \
		go install github.com/git-chglog/git-chglog/cmd/git-chglog@latest; \
	fi
	git-chglog --next-tag $(NEXT_VERSION) -o CHANGELOG.md

.PHONY: install release changelog;