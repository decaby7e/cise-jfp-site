#!/bin/bash
set -e

# CISE Home Website Deployment

script_path=$(dirname $(realpath -s $0))

# Check for dependencies
"$script_path/install-deps.sh" "check"

# Build and setup the webroot
hugo -s "$script_path/.." -d "$HOME/public_html/"
rsync -a --delete --exclude 'files' "$script_path/../public" "$HOME/public_html/"
"$script_path/gen-directory-index.py" -r "$HOME/public_html/files/"

echo "Successfully deployed site to https://cise.ufl.edu/~$USER/"

exit 0
