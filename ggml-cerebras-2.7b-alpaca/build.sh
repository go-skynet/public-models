#!/bin/bash

set -ex

mkdir models

wget -q -O models/model.bin https://huggingface.co/lxe/Cerebras-GPT-2.7B-Alpaca-SP-ggml/resolve/main/ggml-model-f16.bin

docker build -f ./Dockerfile -t $IMAGE models

rm -rf models
