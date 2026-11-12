# VIM Starter

A small, dependency-free starter configuration for Vim. It provides sensible editing defaults and a few practical key mappings without requiring a plugin manager.

## Files

- `.vimrc` — Vim configuration.
- `.gitignore` — excludes common Vim swap, backup, and undo files.

## Try it

From the repository root, start Vim with this config:

```sh
vim -u "$PWD/.vimrc"
```

To install it as your user configuration, back up your existing file and copy this one:

```sh
[ -f "$HOME/.vimrc" ] && cp "$HOME/.vimrc" "$HOME/.vimrc.backup"
cp .vimrc "$HOME/.vimrc"
```

Open Vim and run `:help` to learn more. Use `:Tutor` for Vim's interactive tutorial.

## Customize

Edit `.vimrc` to change options or mappings. The leader key is Space; for example, `<leader>w` saves the current file. Add plugin-manager setup only if and when you want plugins.
