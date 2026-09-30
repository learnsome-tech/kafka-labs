#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m07l05-c . && docker run --rm --network m07l05-net m07l05-c python decide.py
