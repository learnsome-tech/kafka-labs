#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m04l05-net -v "$PWD:/app" m04l05-client python producer.py
docker run --rm --network m04l05-net -v "$PWD:/app" m04l05-client python retry.py
