#!/bin/sh
if [ ! -f "${HOME}/.aria2/aria2.conf" ]; then
    cp "${HOME}/.config/aria2/aria2.conf" "${HOME}/.aria2/aria2.conf"
fi

arg=""
if [ ! -d "${HOME}/Downloads/.dl" ]; then
    mkdir -p "${HOME}/Downloads/.dl"
fi
$arg += " -d ${HOME}/Downloads/.dl"

if [ -n "${SECRET+x}" ]; then
    $arg += " --rpc-secret=${SECRET}"
fi

if [ -n "${EXTERNAL_IP+x}" ]; then
    $arg += " --bt-external-ip=${EXTERNAL_IP}"
fi

echo "aria2c run with args[$arg]"
aria2c $arg
