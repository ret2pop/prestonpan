#!/bin/bash

# A simple extension to add a back button to every page that needs one.

PROJECT_ROOT="./build/website"
if [ "$(realpath "$1")" = "$(realpath "$PROJECT_ROOT/index.html")" ]; then
	printf ' '
	exit 0
fi

#
if [ "$(basename "$1")" = 'index.html' ];
then
	printf '<a href="../index.html">Back</a>'
else
	printf '<a href="./index.html">Back</a>'
fi
