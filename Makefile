DOCKER_IMG := docker.lco.global/curl-container
GIT_DIRTY := $(shell git status --porcelain)
GIT_TAG := $(shell git describe --always)

# Add a suffix to the tag if the repo is dirty
ifeq ($(GIT_DIRTY),)
TAG := $(GIT_TAG)
else
TAG := $(GIT_TAG)-dirty
endif

all:
	docker build -t $(DOCKER_IMG):$(TAG) .
	docker push $(DOCKER_IMG):$(TAG)
