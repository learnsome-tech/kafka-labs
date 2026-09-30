#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash show-cost.sh
docker build -q -t m07l05-c . && docker run --rm --network m07l05-net m07l05-c python decide.py
