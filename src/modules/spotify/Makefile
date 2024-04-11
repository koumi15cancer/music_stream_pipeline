# Data Stream Spotify Services
src := ./src
image_name := spotify_producer
version := 1.0
app_name := spotify_producer
network := local_default

# Assuming you have a Makefile with the following content
start:

# Development Targets/ local machine
# -------------------

build-dev:
	docker build -t $(image_name):$(version) .

build-dev-nc:
	docker build -t $(image_name):$(version) . --no-cache

build-dev-progress:
	docker build -t $(image_name):$(version) . --no-cache --progress=plain

down-dev:
	docker rm -f $(app_name) || true

run-dev: down-dev
	docker run --network=$(network) --name=$(app_name) $(image_name)

run-dev-d: down-dev
	docker run --network=$(network) --name=$(app_name) -d $(image_name)
