#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l05-net -v $PWD:/app m03l05-client python alo.py
