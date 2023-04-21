#!/bin/bash

set -ex

mkdir models

wget -q -O models/model.bin https://huggingface.co/concedo/cerebras-2.7b-ggml/resolve/main/cerebras-2.7b-q4_0.bin

docker build -f ./Dockerfile -t $IMAGE models

rm -rf models
