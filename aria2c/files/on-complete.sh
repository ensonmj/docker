#!/bin/sh

echo [$(date)] $2, $3, $1 "<br>" >> "${HOME}/Downloads/log.html"

src=""
if [ $2 -eq 1 ]; then
    src="$3"
elif [ $2 -gt 1 ]; then
    dst="${HOME}/Downloads"
    src="${3#$dst/_dl/}"
    src="${src%%/*}"
fi

if [ "X${src}" != "X" ]; then
    mv "${src}" "${HOME}/Downloads"
    rm -rf "${src}.aria2"
fi
