#!/bin/bash

# Clean up the environment
apt-get update
apt remove libjansson-dev ctags dh-autoreconf
apt-get install git dh-autoreconf

# Install libjansson dependency
apt-get install libjansson-dev

git clone https://github.com/universal-ctags/ctags.git

cd ctags
./autogen.sh
./configure
make
make install
cd ..
