#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m06l05-net -v "$PWD:/app" m06l05-client python rebuild.py
