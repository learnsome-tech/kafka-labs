#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l01-net -v $PWD:/app m03l01-client python consumer.py
