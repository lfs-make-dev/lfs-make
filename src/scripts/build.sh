#!/bin/bash
# Build script for the entire system

# Set necessary environment variables

# Step 1: Build the kernel
cd core/kernel
make

# Step 2: Build the bootloader
cd ../bootloader
make

# Step 3: Build the toolchain
cd ../toolchain
make

# Step 4: Build other components/packages
cd ../../packages/package1
make

# Repeat the above steps for other packages/components

# Additional build steps if necessary

echo "Build completed successfully."

