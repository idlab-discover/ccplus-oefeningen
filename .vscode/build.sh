#!/bin/bash
file="$3"
ext="${file##*.}"

cd "$(basename $file)"

if [[ "$ext" == "c" ]]; then
    gcc "$@"
elif [[ "$ext" == "cpp" || "$ext" == "cc" || "$ext" == "cxx" ]]; then
    g++ "$@"
else
    echo "Unsupported file extension: $ext"
    exit 1
fi
