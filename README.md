# Visual Analytics for Hardware Design

This project connects the open-source CIRCT (circt.llvm.org) EDA stack with the [Google Model Explorer](https://github.com/google-ai-edge/model-explorer) and augments the product with CIRCT-specific interactive analyses, as well as bi-directional analysis-transformations that allow to visualise and influence the compilation process.

The project includes a [fork of CIRCT](https://github.com/GroupTango/circt) that includes the necessary changes to enable the integration with the Model Explorer.

## Installation

Run `./get_started.sh` to install the necessary dependencies and build the project.

## Usage

See `./run_adapter.sh` for an example of how to start the model explorer server with the CIRCT adapter and load a sample MLIR file.
