#!/usr/bin/env bash
# What earlier panels of this lesson ran, so this one has something to work with.
set -u
bash start-m07l02.sh
docker build -q -t m07l02-c . && docker run --rm --network m07l02-net m07l02-c python isr.py
docker build -q -t m07l02-c . && docker run --rm --network m07l02-net m07l02-c python prod.py
