#!/bin/bash

if [ -e /home/vagrant/.bash_profile ]; then
    if grep -q "lithium" /home/vagrant/.bash_profile; then
        # code if found
        echo "Lithium path found in bash_profile already"
    else
        echo "
        if [[ $PATH == ?(*)lithium?(*) ]]; then
            echo "Lithium Path already set"
        else
            echo "PATH="$PATH":/var/www/framework/libraries/lithium/console" >> /home/vagrant/.bash_profile
        fi" > /home/vagrant/.bash_profile
    fi
else
    if [[ $PATH == ?(*)lithium?(*) ]]; then
        echo "Lithium Path already set"
    else
        echo "PATH="$PATH":/var/www/framework/libraries/lithium/console" >> /home/vagrant/.bash_profile
    fi
fi



