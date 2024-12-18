# Contributing to Onchain Clippy

## Nix development environment

The project is configured
to use [Nix package manager](https://nix.dev) for managing core dependencies.

The minimal setup only requires [installing Nix](https://nix.dev/install-nix).
Then, activate Nix dev env by running
```bash
nix develop --extra-experimental-features nix-command --extra-experimental-features flakes
```

`--extra-experimental-features` can be omitted by adding the following entry to the [global nix.conf](https://nix.dev/manual/nix/2.25/command-ref/conf-file.html):
```
extra-experimental-features = nix-command flakes
```

### Automatic Nix environment activation

The Nix dev env can be activated automatically upon entering the project root directory.
Follow this [docs page](https://nix.dev/guides/recipes/direnv#automatic-direnv) for the instructions.
