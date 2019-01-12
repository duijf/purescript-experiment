.PHONY: setup help ps js dev dev-ps dev-js

default: help


setup:  ## Install JS dependencies
	yarn


ps:  ## Compile PS sources
	psc-package build


js:  ## Bundle JS
	./node_modules/.bin/parcel build src/index.html


dev:  ## Watch PS and JS sources; run dev server
	{ make dev-ps & make dev-js; }


dev-ps:  ## Watch PS sources
	ls src/** | entr -s "make ps"


dev-js:  ## Watch JS sources; run dev server
	./node_modules/.bin/parcel src/index.html


help:  ## Print this output
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'
