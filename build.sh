#! /bin/bash

if [ $# -ne 1 ]; then
  echo "usage: $0 <message>"
  exit 0
fi

/usr/local/bin/asciidoctor assts/*.adoc *.adoc labs/*.adoc
git add .
git commit -m "$1"
