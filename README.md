# VIM Starter Pro

This repository contains a more advanced Vim starter configuration designed for a smoother editing experience out of the box.

## Included

- `.vimrc` with useful defaults and plugin setup
- `vim-plug` plugin manager integration
- `NERDTree` for file browsing
- `fzf` for quick file search
- `vim-airline` for a cleaner status line
- `dracula` theme
- helpful key mappings for faster workflow

## Install

1. Install Vim.
2. Install `git` if it is not already available.
3. Open Vim and run:

```vim
:PlugInstall
```

4. Restart Vim.

## Quick commands

- `<leader>n` — toggle file explorer
- `<leader>f` — fuzzy-find files
- `<leader>g` — search git-tracked files
- `<leader>w` — save
- `<leader>q` — quit
- `<leader>h` — clear search highlights

## Launching with this config

From the repo root:

```sh
vim -u "$PWD/.vimrc"
```

To make it your global Vim config, copy it into your home directory:

```sh
cp .vimrc "$HOME/.vimrc"
```

## Customize

Edit `.vimrc` to add more plugins or adjust options. Once you're happy with the setup, you can expand it with language-specific tooling like LSP plugins, linters, and autocompletion.
