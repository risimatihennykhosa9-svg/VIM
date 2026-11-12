#!/usr/bin/env bash
set -e

if ! command -v vim >/dev/null 2>&1; then
  echo "Vim is not installed. Please install Vim first."
  exit 1
fi

vim +PlugInstall +qa
