#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m04l02-net -v "$PWD:/app" m04l02-client python dedup.py
