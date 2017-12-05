#!/bin/sh

if [ $2 -eq 1]; then
    mv "$3" "${HOME}/Downloads"
    rm -rf "$3.aria2"
fi

echo [$(date)] $2, $3, $1 "<br>" >> "${HOME}/Downloads/log.html"
