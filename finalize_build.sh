#!/bin/sh

ROOT_DIR="./build/website/"
# replace placeholder tags with stuff
for i in $(find "$ROOT_DIR" -type f -name '*.html'); do
	if [ "$(basename "$i")" = 'index.html' ];
	then
		gsed -i -e 's|<!--BACKDIR-->|\| <a href="\.\./index\.html">Back</a>|g' "$i"
	else
		gsed -i -e 's|<!--BACKDIR-->|\| <a href="\./index\.html">Back</a>|g' "$i"
	fi
done;

gsed -i -e 's|\| <a href="\.\./index\.html">Back</a>||g' "$ROOT_DIR/index.html"
