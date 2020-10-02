#!/bin/sh

if [ $(which glow) ]; then
    glow "$@"
elif [ $(which mdv) ]; then
    mdv "$@"
else
    cat "$@"
fi
