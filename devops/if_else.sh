#!/bin/sh

read -p "Which is a containerization tool? " tool

if [ "$tool" = "docker" ]; then
    echo "Yes, docker is a containerization tool"
else
    echo "No, this is not a containerization tool"
fi

