#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m06l01-net -v "$PWD:/app" m06l01-client python db_first.py
