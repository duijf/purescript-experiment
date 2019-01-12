.PHONY: setup help ps ps-priv ps-watch run

default: help


setup:  ## Yarn Bullshit
	yarn install


help:  ## Print this output
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


ps:  ## Compile PureScript sources into JavaScript
	make ps-priv


ps-priv: ## Builds ps
	psc-package build


ps-watch:  ## Build on file change
	(./node_modules/.bin/parcel src/index.html) & (ls src/** | entr -s "make ps-priv")


run:  ## Run a dev server
	./node_modules/.bin/parcel src/index.html
