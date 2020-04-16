IMAGE_URL?="ed-staging:local"

server:
	docker run --rm -d -p 8080:8080 $(IMAGE_URL)

build:
	docker build -t $(IMAGE_URL) --pull .

sh:
	docker run --rm $(IMAGE_URL) sh
