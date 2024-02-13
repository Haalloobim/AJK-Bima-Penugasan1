#!/bin/bash

if [ -z "$1" ]; then
    echo "Error Message -> Usage: $0 <filename> <plugin>"
    exit 1
fi

filename="$1"
plugin="$2"

python3 vol/vol.py -f "$filename" windows."$plugin" > "$plugin"

 echo "Output saved to $plugin file..."