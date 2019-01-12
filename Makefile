.PHONY: setup help ps ps-priv ps-watch run

default: help


setup:
	nix-shell --run 'yarn install'


help:  ## Print this output
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


ps:  ## Compile PureScript sources into JavaScript
	nix-shell --run make ps-priv


ps-priv:
	psc-package build


ps-watch:  ## Build on file change
	nix-shell --run 'ls src/** | entr -s "make ps-priv"'


run:  ## Run a dev server
	nix-shell --run './node_modules/.bin/parcel src/index.html'
