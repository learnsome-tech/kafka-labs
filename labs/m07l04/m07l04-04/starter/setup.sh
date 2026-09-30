#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start-m07l04.sh
docker build -q -t m07l04-c . && docker run --rm --network m07l04-net m07l04-c python prod.py
