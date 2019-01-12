.PHONY: build help serve

default: help


help:  ## Print this output
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


build:  ## Build bundle.js
	psc-package build


watch:  ## Build on file change
	ls src/** | entr -s 'make build'


run:  ## Run a dev server
	./node_modules/.bin/parcel src/index.html
