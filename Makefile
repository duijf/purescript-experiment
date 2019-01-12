.PHONY: build help serve
.DEFAULT: help


help:  ## Print this output
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


build:  ## Build bundle.js
	psc-package build
	purs bundle --module Main --main Main output/*/*.js > dist/bundle.js


serve:  ## Run a dev server
	cd dist && python3.6 -m http.server
