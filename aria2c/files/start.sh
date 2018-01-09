#!/bin/sh

if [ ! -f "${HOME}/.aria2/aria2.conf" ]; then
    cp "${HOME}/.config/aria2/aria2.conf" "${HOME}/.aria2/aria2.conf"
fi

if [ ! -f "${HOME}/.aria2/session.dat" ]; then
    touch "${HOME}/.aria2/session.dat"
fi

# construct arguments
arg=""
if [ ! -d "${HOME}/Downloads/_dl" ]; then
    mkdir -p "${HOME}/Downloads/_dl"
fi
arg="$arg -d ${HOME}/Downloads/_dl"

if [ "x${SECRET}" != "x" ]; then
    arg="$arg --rpc-secret=${SECRET}"
fi

if [ "x${EXTERNAL_IP}" != "x" ]; then
    arg="$arg --bt-external-ip=${EXTERNAL_IP}"
fi

echo "aria2c run with argments[${arg}]"
aria2c ${arg}
