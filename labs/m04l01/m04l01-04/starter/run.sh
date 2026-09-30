#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m04l01-net -v "$PWD:/app" m04l01-client python producer.py
