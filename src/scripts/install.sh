#!/bin/bash
# Install script for the entire system

# Set necessary environment variables

# Step 1: Install the kernel
cd core/kernel
make install

# Step 2: Install the bootloader
cd ../bootloader
make install

