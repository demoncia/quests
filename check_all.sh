#!/bin/sh
find . -name "*.lua" \
| while read s
do
        if ! luac -p "$s" 2>/dev/null; then
                echo "$s is invalid."
                luac -p "$s"
        fi
done