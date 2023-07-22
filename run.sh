#!/bin/bash
# sudo rm -rf build
sudo rm -rf bin
sleep 1
mkdir -p build bin
sudo cmake -S . -B build
cd build
sudo make install
cd ..
cd bin
./main
cd ..
