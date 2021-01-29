#!/bin/bash

SCRIPT_DIR=$(dirname "$BASH_SOURCE")
SOURCE_DIR="$SCRIPT_DIR/../jp/book/html-chunk"
TARGET_DIR="$SCRIPT_DIR/../../../dqbook-gh-pages"

rsync -avC --exclude=.nojekyll --delete ${SOURCE_DIR}/ ${TARGET_DIR}
