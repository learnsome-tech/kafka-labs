#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m04l01-net -v "$PWD:/app" m04l01-client python producer.py
