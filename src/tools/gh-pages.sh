#!/bin/bash

SOURCE_DIR=./jp/book/html-chunk/
TARGET_DIR=../../dqbook-gh-pages

rsync -avC --exclude=.nojekyll --delete ${SOURCE_DIR}/ ${TARGET_DIR}

