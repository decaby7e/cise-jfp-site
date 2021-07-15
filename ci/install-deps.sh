#!/bin/bash

fatal(){
  printf "\033[0;31mFATAL  $1\033[0m\n"
  exit 1
}

CHECK=''
# Check-Mode
if [[ "$1" == "check" ]]; then
  CHECK='true'
fi

# Get required resources
if [[ ! -f "$HOME/.local/bin/hugo" ]]; then
    [[ "$CHECK" ]] && fatal 'Missing dependency hugo! Install with `install-deps.sh`'
    wget -O "$tmp/hugo.tar.gz" https://github.com/gohugoio/hugo/releases/download/v0.85.0/hugo_0.85.0_Linux-64bit.tar.gz
    tar -zxvC "$HOME/.local/bin" -f "$tmp/hugo.tar.gz" hugo
fi
