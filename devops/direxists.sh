#!/bin/bash

read -p "Enter the directory name: " dirname

if [ -d "$dirname" ]; then
    echo "The directory '$dirname' exists."
else
    echo "The directory '$dirname' does not exist."
fi

