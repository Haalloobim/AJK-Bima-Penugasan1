#!/bin/bash

filename="$1"
plugin="$2"

python3 vol/vol.py -f "$filename" windows."$plugin" > "$plugin"

 echo "Output saved to $plugin file..."