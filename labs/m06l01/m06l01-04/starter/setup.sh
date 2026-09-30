#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash setup.sh
docker run --rm --network m06l01-net -v "$PWD:/app" m06l01-client python db_first.py
