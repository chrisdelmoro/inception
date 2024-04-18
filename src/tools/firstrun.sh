#!/bin/bash

nameserver_line="nameserver 8.8.8.8"
nameserver_line2="nameserver 8.8.4.4" 

file="/etc/resolv.conf"

sudo apt install -y docker docker-compose

if [ -f "$file" ] && [ -r "$file" ]; then
    if ! grep -q "^$nameserver_line" "$file"; then
        echo "$nameserver_line" | cat - "$file" > temp && mv temp "$file"
        echo "Added nameserver line to $file"
    else
        echo "Nameserver line already exists in $file"
    fi
else
    echo "File $file does not exist or is not readable"
fi

if [ -f "$file" ] && [ -r "$file" ]; then
    if ! grep -q "^$nameserver_line2" "$file"; then
        echo "$nameserver_line2" | cat - "$file" > temp && mv temp "$file"
        echo "Added nameserver line to $file"
    else
        echo "Nameserver line already exists in $file"
    fi
else
    echo "File $file does not exist or is not readable"
fi