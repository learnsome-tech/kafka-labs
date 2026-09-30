#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python commit.py
