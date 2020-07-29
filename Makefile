.PHONY: docker

VERSION=1.2.0

docker:
	docker build --no-cache  -t xuanloc0511/hermes-db:${VERSION} .