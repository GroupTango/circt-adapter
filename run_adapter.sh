#!/bin/bash
python3 -m venv venv
source $PWD/venv/bin/activate
pip install ai-edge-model-explorer
model-explorer --extensions=circt_adapter