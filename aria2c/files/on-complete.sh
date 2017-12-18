#!/bin/sh

echo [$(date)] $2, $3, $1 "<br>" >> "${HOME}/Downloads/log.html"

if [ $2 -gt 0 ]; then
    dst="${HOME}/Downloads"
    dir="${dst}/_dl"
    src="${3#$dir/}"
    src="${dir}/${src%%/*}"

    mv "${src}" "${dst}"
    rm -rf "${src}.aria2"
fi
