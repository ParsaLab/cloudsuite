#!/bin/bash

for arch in amd64 arm64 riscv64; do
    docker buildx build --platform=linux/${arch} -t cloudsuite/debian:${arch} -f Dockerfile.${arch} .
done
