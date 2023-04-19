#!/bin/bash

set -ex

mkdir models

wget -q -O models/model.bin https://gpt4all.io/models/ggml-gpt4all-j.bin

docker build -f ./Dockerfile -t $IMAGE models

rm -rf models
