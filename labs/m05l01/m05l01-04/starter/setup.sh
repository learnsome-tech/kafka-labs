#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m05l01-net -v "$PWD:/app" m05l01-client python serialize.py
