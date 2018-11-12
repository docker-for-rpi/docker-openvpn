REPO ?= forrpi/openvpn
# TAG  ?= latest

all: build push

build: Dockerfile
		docker build --rm  -t $(REPO):latest .
		# docker build --rm  -t $(REPO):$(TAG) .
		# docker tag $(REPO):$(TAG) $(REPO):latest

push:
		# docker push $(REPO):$(TAG)
		docker push $(REPO):latest
