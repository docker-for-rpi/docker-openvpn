REPO ?= forrpi/openvpn
TAG  ?= 2018-11-12

all: build push

build: Dockerfile
		docker build --rm  -t $(REPO):$(TAG) .
		docker tag $(REPO):$(TAG) $(REPO):latest

push:
		docker push $(REPO):$(TAG)
		docker push $(REPO):latest
