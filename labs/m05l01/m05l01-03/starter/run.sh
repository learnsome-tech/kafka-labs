#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m05l01-net -v "$PWD:/app" m05l01-client python serialize.py
