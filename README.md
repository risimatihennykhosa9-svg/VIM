# VIM Web Dev Starter

This repository contains a front-end focused Vim setup designed for HTML, CSS, JavaScript, TypeScript, and modern web development workflows.

## Included

- modern default Vim settings
- plugin-based productivity setup
- NERDTree project browser
- fzf fuzzy file search
- git integration
- airline status bar
- gruvbox theme
- Coc.nvim with web tooling support
- syntax support for JavaScript, TypeScript, JSX, CSS, and JSON

## Quick start

1. Install Vim and Node.js.
2. Install `git`.
3. Open Vim and run:

```vim
:PlugInstall
:CocInstall coc-html coc-css coc-json coc-yaml coc-tsserver coc-eslint coc-prettier
```

4. Restart Vim.

## Useful commands

- `<leader>n` — toggle NERDTree
- `<leader>f` — open file search
- `<leader>g` — search git-tracked files
- `<leader>w` — save
- `<leader>q` — quit
- `<leader>h` — clear search highlights
- `gd` — go to definition
- `gr` — find references
- `K` — show documentation
- `<C-y>,` — Emmet expansion

## Run this config

```sh
vim -u "$PWD/.vimrc"
```

## Install Vim-plug

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Optional tools for web work

```sh
npm install -g prettier eslint eslint-config-prettier
```

## Customize

Edit `.vimrc` to add routes, framework-specific plugins, or linting rules. This setup is a good base for React, Vue, Angular, Node projects, and plain front-end apps.
