#!/bin/bash

# Initialize the counter
num=0

# Loop until num reaches 50
while [ $num -le 50 ]; do
    # Print the number if it is even
    if [ $((num % 2)) -eq 0 ]; then
        echo $num
    fi
    # Increment the counter by 1
    num=$((num + 1))
done

