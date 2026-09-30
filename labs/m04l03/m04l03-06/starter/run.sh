#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python abort.py
