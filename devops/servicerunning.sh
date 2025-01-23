#!/bin/bash

service="ssh"

if systemctl is-active --quiet $service; then
    echo "The $service service is running."
else
    echo "The $service service is not running."
fi

