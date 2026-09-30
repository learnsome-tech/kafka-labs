#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker stop m07l03-b2 m07l03-b3 && docker run --rm --network m07l03-net m07l03-c python fail.py
