#!/bin/bash

if [ -z "$1" ]; then
    echo "Error Message -> Usage: $0 <filename> <plugin>"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Error Message: Command need second argument"
    exit 1
fi

filename="$1"
plugin="$2"

python3 vol/vol.py -f "$filename" windows."$plugin" > "$plugin"

# Check the exit status of the previous command
if [ $? -ne 0 ]; then
    echo "Error Message: vol.py command failed"
    exit 1
fi

echo "Output saved to $plugin file..."
echo "--COMMAND EXECUTED--"