#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m03l04-net -v $PWD:/app m03l04-client python consumer.py
