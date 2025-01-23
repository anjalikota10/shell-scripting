#!/bin/bash

package="wget"

if dpkg -l | grep -qw $package; then
    echo "$package is already installed."
else
    echo "$package is not installed. Installing now..."
    sudo apt install -y $package
fi

