# Purescript experiment

[**@arianvp**][arianvp-gh] and [**@duijf**][duijf-gh] derping with Purescript.

## Setup

Get [`nix`][nix-site], then the following stuff works:

```
$ nix-shell

# We have a Makefile with common commands. It supports help
# output. Run `make` for a list of all supported commands.
$ make
setup     Install JS dependencies
ps        Compile PS sources
js        Bundle JS
dev       Watch PS and JS sources; run dev server
dev-ps    Watch PS sources
dev-js    Watch JS sources; run dev server
help      Print this output

# Install JavaScript dependencies using Yarn. You only need
# to do this once.
$ make setup
```

## Development

The build works in two phases:

 1. Compile the Purescript source into JavaScript using `psc-package build`.
 1. Run the `parcel` module bundler on the JavaScript to get a working site.

To run a development server, run the following commands:

```
$ nix-shell
$ make dev
```

If you don't like multiplexed output from the JavaScript and PureScript builds,
you can also open two terminals and run `make dev-ps` and `make dev-js` in
separate shells.

 [arianvp-gh]:https://github.com/arianvp
 [duijf-gh]:https://github.com/duijf
 [nix-site]:https://nixos.org/nix/
