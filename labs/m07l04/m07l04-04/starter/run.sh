#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m07l04-c . && docker run --rm --network m07l04-net m07l04-c python cons.py
