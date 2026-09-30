#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m04l05-net -v "$PWD:/app" m04l05-client python dlqcheck.py
