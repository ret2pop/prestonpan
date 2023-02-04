#!/bin/sh

# Date: 9/30/2022
# Author: Preston Pan
# Description: A generic static site generator with plugin support written in exclusively POSIX shell.
# Automatically deploys website to git and web servers.


# edit the following variables if you are to change the project layout
# Also edit the variables for the lite version of the website.
echo "Making main website..."
export TEMPLATE_DIR="./templates"
export TEMPLATE_BUILD_DIR="./build_template"
export DEFAULT_TEMPLATE="$TEMPLATE_DIR/base.html"
export BUILD_DIR="./build"
export PLUG_DIR="./plugins"

# we want to rebuild the entire thing every time
rm -rf "$BUILD_DIR"
mkdir "$BUILD_DIR"
rm -rf "$TEMPLATE_BUILD_DIR"
cp -r "$TEMPLATE_DIR" "$TEMPLATE_BUILD_DIR"

# copy directory structure of website without copying the files
find ./website -type d | xargs -I{} mkdir -p "$BUILD_DIR/{}"

# With all the preparation done, it hands execution over to the process_file script.
find ./website -type f -exec ./process_file {} \; || exit 1

bash finalize_build.sh
if [ $# -eq 0 ]; then
	exit 0 # and exits 0 if successful and no commit message was supplied.
fi

# Change this line if you are a future PSIIan maintaining this.
rsync -uvrP --delete-after "$BUILD_DIR/website/" root@prestonpan.tech:/var/www/prestonpan
git add .

git commit -m "$1"
git push origin master
