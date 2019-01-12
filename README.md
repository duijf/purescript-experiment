# Purescript experiment

[**@arianvp**][arianvp-gh] and [**@duijf**][duijf-gh] derping with Purescript.

## Development

Get [`nix`][nix-site], then:

```
# Get an isolated shell which has all dependencies installed.
$ nix-shell

# We have a Makefile with common commands. It supports help
# output. Run `make` for a list of supported commands.
$ make
```

## Development

Open two terminals:

```
# Run a dev server in terminal 1
$ make serve

# Run build on file change in terminal 2
$ make watch
```

You need to manually refresh your browser on changes. Live reload isn't there
unfortunately.

 [arianvp-gh]:https://github.com/arianvp
 [duijf-gh]:https://github.com/duijf
 [nix-site]:https://nixos.org/nix/
