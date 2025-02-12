# A helper script to format code. Must be called from repo's root.

set -ex

python3 -m venv venv
source $PWD/venv/bin/activate
pip install pyink

pyink --pyink-use-majority-quotes --pyink-indentation=2 --preview --unstable --line-length 80 \
      --extend-exclude .downloads --extend-exclude '\.pyi' --extend-exclude circt/ ./