# VIM Developer Starter

This repository contains a more complete Vim setup for software development, with productivity tools for code browsing, navigation, git integration, and Python support.

## Included

- modern defaults for editing and search
- custom leader-key shortcuts
- NERDTree file explorer
- fzf fuzzy search
- git status integration
- airline status bar
- gruvbox theme
- Coc.nvim with Python support via `coc-pyright`

## Quick start

1. Install Vim.
2. Install `git`.
3. Install `node` and `npm` if you want the Coc language server support.
4. Open Vim and run:

```vim
:PlugInstall
:CocInstall coc-pyright
```

5. Restart Vim.

## Useful commands

- `<leader>n` — toggle NERDTree
- `<leader>f` — open file search
- `<leader>g` — search git-tracked files
- `<leader>w` — save
- `<leader>q` — quit
- `<leader>h` — clear search highlight
- `gd` — jump to definition
- `gr` — find references
- `K` — show documentation preview

## Run from repository root

```sh
vim -u "$PWD/.vimrc"
```

## Install the plugin manager

If Vim-plug is not already installed, run:

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Optional: install global Python support

```sh
npm install -g yarn
```

Then inside Vim:

```vim
:CocInstall coc-pyright
```

## Customize

Edit `.vimrc` and add language-specific settings, LSP support, or additional plugins. This is a good base for Python, JavaScript, YAML, and general coding workflows.
