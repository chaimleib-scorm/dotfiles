#!/bin/bash
set -e
printf "%-30s %s..." Installing "JS/TypeScript Language Server"

library="$HOME"/projects/github

if command -v javascript-typescript-stdio >/dev/null; then
  echo "Already installed"
  exit
fi
yarn global add javascript-typescript-langserver

