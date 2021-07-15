#!/bin/bash

# CISE Home Website Deployment

REPO='https://github.com/decaby7e/cise-jfp-site'
tmp=`mktemp -d`
script_path=$(dirname $(realpath -s $0))

# Get required resources
git clone "$REPO" "$tmp/home-site"
if [[ ! -f "$HOME/.local/bin/hugo" ]]; then
    wget -O "$tmp/hugo.tar.gz" https://github.com/gohugoio/hugo/releases/download/v0.85.0/hugo_0.85.0_Linux-64bit.tar.gz
    tar -zxvC "$HOME/.local/bin" -f "$tmp/hugo.tar.gz" hugo
fi

# Build and setup the webroot
hugo -s "$tmp/home-site" -d "$HOME/public_html/"
rsync -a --delete --exclude 'files' "$tmp/home-site/public/" "$HOME/public_html/"
"$script_path/gen-directory-index.py" -r "$HOME/public_html/files/"

rm -rf $tmp

echo "Successfully deployed site to https://cise.ufl.edu/~$USER/"

exit 0
