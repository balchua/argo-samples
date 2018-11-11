# import config.
# You can change the default config with `make cnf="config_special.env" build`
app ?= application.env
include $(app)
export $(shell sed 's/=.*//' $(app))


# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: build build-nc

# DOCKER TASKS
# Build the container
build: ## Build the container
	docker build -t $(DOCKER_REPO)/$(APP_NAME):$(APP_VERSION) .

build-nc: ## Build the container without caching
	docker build --no-cache -t $(DOCKER_REPO)/$(APP_NAME):$(APP_VERSION) .

push: ## Push the image to docker.io
	docker push $(DOCKER_REPO)/$(APP_NAME):$(APP_VERSION)