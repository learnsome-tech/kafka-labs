#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m07l02-c . && docker run --rm --network m07l02-net m07l02-c python prod.py
