#!/bin/bash

read -p "Enter a fruit name: " fruit

if [ "$fruit" = "apple" ]; then
    echo "You entered apple!"
else
    echo "You entered something else."
fi

