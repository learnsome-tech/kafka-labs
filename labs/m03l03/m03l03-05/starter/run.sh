#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l03-net -v $PWD:/app m03l03-client python consumer.py
