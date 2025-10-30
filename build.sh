#!/bin/bash

# Build script for OpenGL test

echo "Building OpenGL test program..."

# Create build directory
mkdir -p build
cd build

# Run CMake and build
cmake .. && make

if [ $? -eq 0 ]; then
    echo ""
    echo "==================================="
    echo "Build successful!"
    echo "Running the program..."
    echo "==================================="
    echo ""
    ./test_opengl
else
    echo ""
    echo "Build failed. Check the error messages above."
fi