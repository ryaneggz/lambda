#!/bin/bash

# Navigate to the script's directory
cd "$(dirname "$0")"

# Update the main repository
git pull origin main

# Recursively update each submodule
git submodule update --init --recursive
git submodule foreach --recursive git pull origin master