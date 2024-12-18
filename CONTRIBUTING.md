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

## Chrome Extension Development

To develop the Chrome extension locally:

1. Build the extension:
```bash
cd app/extension
pnpm install
pnpm build
```

2. Load the extension in Chrome:
   - Open Chrome and navigate to `chrome://extensions/`
   - Enable "Developer mode" in the top right
   - Click "Load unpacked" and select the `app/extension/dist` directory
   - The extension icon should appear in your Chrome toolbar

3. Development workflow:
   - Make changes to files in `app/extension/src`
   - Run `pnpm build` to rebuild
   - Click the refresh icon on the extension card in `chrome://extensions/`
   - Click the extension icon to see your changes