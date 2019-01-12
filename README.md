# Purescript experiment

[**@arianvp**][arianvp-gh] and [**@duijf**][duijf-gh] derping with Purescript.

## Setup

Get [`nix`][nix-site], then the following stuff works:

```
$ nix-shell

# We have a Makefile with common commands. It supports help
# output. Run `make` for a list of all supported commands.
$ make

$ make setup
```

## Development

The build works in two phases:

 1. Compile the Purescript source into JavaScript using `psc-package build`.
 1. Run the `parcel` module bundler on the JavaScript to get a working site.

To run the build, open two terminals:

```
# Build Purescript sources on file change, bundle javascript resources, and reload
$ make ps-watch
```

 [arianvp-gh]:https://github.com/arianvp
 [duijf-gh]:https://github.com/duijf
 [nix-site]:https://nixos.org/nix/
