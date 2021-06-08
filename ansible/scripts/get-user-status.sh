#!/usr/bin/env bash

H=$(hostname)

if id "$1" &>/dev/null;
then
    echo "====== $1 : $H ======" && id "$1" && chage -l "$1" | sed 's/[[:space:]]/ /g'
else
    echo "====== NOT FOUND $1 : $H ======"
fi

exit 0
