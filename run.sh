#!/bin/bash

# Check if the script argument is provided
if [ -z "$1" ]; then
    echo "No script name provided!"
    exit 1
fi

# Run the corresponding script
case $1 in
    neovim)
        ./scripts/neovim.sh
        ;;
    terminal)
        ./scripts/terminal.sh
        ;;
    *)
        echo "Unknown function: $1"
        exit 1
        ;;
esac
