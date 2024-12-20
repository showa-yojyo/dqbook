#!/bin/bash

export TZ=Asia/Tokyo
declare -r TODAY_DATE=$(date -Iseconds)
declare -r TODAY_YEAR=$(date +%Y)
declare -r BOOK_VERSION="${1:?:Usage: ${0##*/} VERSION}"

cat <<BOOKINFO
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE bookinfo PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN"
  "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd">
<bookinfo>
  <copyright>
    <year>2002-${TODAY_YEAR}</year>
    <holder>
      <ulink url="https://showa-yojyo.github.io/">プレハブ小屋</ulink>
    </holder>
  </copyright>
  <pubdate>${TODAY_DATE}</pubdate>
  <releaseinfo>Version ${BOOK_VERSION}</releaseinfo>
</bookinfo>
BOOKINFO
