#!/bin/bash
if [ -w /bin/bash ]; then
    echo go
else
    echo "error: this script needs to be run with sudo"
fi