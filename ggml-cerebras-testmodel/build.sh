#!/bin/bash

set -ex

mkdir models

wget -q -O models/model.bin https://huggingface.co/concedo/cerebras-111M-ggml/resolve/main/cerberas-111m-q4_0.bin

docker build -f ./Dockerfile -t $IMAGE models

rm -rf models
