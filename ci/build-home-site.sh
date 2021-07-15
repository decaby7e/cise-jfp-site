#!/bin/bash
set -e

# CISE Home Website Deployment

REPO='https://github.com/decaby7e/cise-jfp-site'
tmp=`mktemp -d`
script_path=$(dirname $(realpath -s $0))

# Check for dependencies
"$script_path/install-deps.sh" "check"

# Build and setup the webroot
hugo -s "$tmp/home-site" -d "$HOME/public_html/"
rsync -a --delete --exclude 'files' "$tmp/home-site/public/" "$HOME/public_html/"
"$script_path/gen-directory-index.py" -r "$HOME/public_html/files/"

rm -rf $tmp

echo "Successfully deployed site to https://cise.ufl.edu/~$USER/"

exit 0
