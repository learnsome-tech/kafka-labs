#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m06l02-net -v "$PWD:/app" m06l02-client python populate.py
