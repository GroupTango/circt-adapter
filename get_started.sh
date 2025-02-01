#!/bin/bash

# Sets up the project for development.
# Assumes cmake, ninja, ccache, lld, and python3 are installed.
# You can install them with the package manager for your system, e.g. apt-get, brew, etc.

# Install uv and set up Python environment
curl -LsSf https://astral.sh/uv/install.sh | sh;
uv venv
uv pip install -e .
source .venv/bin/activate

export CMAKE_PREFIX_PATH=$(python -m nanobind --cmake_dir):$(pybind11-config --cmakedir):$CMAKE_PREFIX_PATH

# Initialize the circt submodule
git submodule update --init --recursive --progress
cd circt/llvm
git fetch --unshallow

# Build LLVM/MLIR, CIRCT and CIRCT's Python Bindings
# https://github.com/llvm/circt/blob/main/docs/PythonBindings.md
cd ..
mkdir -p build
cd build
cmake -G Ninja ../llvm/llvm \
    -DCMAKE_BUILD_TYPE=DEBUG \
    -DLLVM_ENABLE_PROJECTS=mlir \
    -DLLVM_EXTERNAL_PROJECTS=circt \
    -DLLVM_EXTERNAL_CIRCT_SOURCE_DIR=.. \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
    -DLLVM_TARGETS_TO_BUILD="" \
    -DLLVM_ENABLE_LLD=ON \
    -DLLVM_CCACHE_BUILD=ON \
    -DLLVM_BUILD_SHARED_LIBS=ON \
    -DMLIR_ENABLE_BINDINGS_PYTHON=ON \
    -DCIRCT_BINDINGS_PYTHON_ENABLED=ON
ninja -j 1     # Limits concurrency to reduce RAM usage, adjust as needed
ninja check-mlir
ninja check-circt
ninja check-circt-integration

# So that Python can import circt
export PYTHONPATH="$PWD/tools/circt/python_packages/circt_core"

cd ../../