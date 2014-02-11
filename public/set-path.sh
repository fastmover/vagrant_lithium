#!/bin/bash
#if grep -Fxq 'lithium' /home/vagrant/.bash_profile

echo "================== ASDFASDF =========================================="
echo "================== ASDFASDF =========================================="
echo "================== ASDFASDF =========================================="
echo "================== ASDFASDF =========================================="
echo "================== ASDFASDF =========================================="

# echo "PATH="$PATH":/var/www/framework/libraries/lithium/console" >> /home/vagrant/.bash_profile

# echo "$PATH"|grep -q lithium && echo 1

# if [1 -eq echo "$PATH"|grep -q aaaa && echo 1]; then
# echo "$PATH"|grep -q 'rvm'

echo grep -qF rvm $PATH

# if grep -qF rvm $PATH; then

# if [[ ":$PATH:" == *":rvm:"* ]];
if [[ $PATH == ?(*:)$rvm?(:*) ]]
    echo "YAYE"
fi

