#!/usr/bin/env bash
set -e

if ! command -v vim >/dev/null 2>&1; then
  echo "Vim is not installed. Please install Vim first."
  exit 1
fi

if ! [ -f "$HOME/.vim/autoload/plug.vim" ]; then
  mkdir -p "$HOME/.vim/autoload"
  curl -fLo "$HOME/.vim/autoload/plug.vim" \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim +PlugInstall +qa
