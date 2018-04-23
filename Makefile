all: run

build:
	GOOS=linux go build --ldflags="-s -w" && tar c tiny | docker import - -c 'ENTRYPOINT ["/tiny"]' tiny:latest

run: build
	docker run --rm tiny
