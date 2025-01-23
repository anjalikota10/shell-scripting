#!/bin/bash

# This is a for loop using seq

for num in $(seq 1 50); do
    mkdir "demo$num"
done

