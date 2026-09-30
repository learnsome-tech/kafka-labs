#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m02l03-net -v "$PWD:/app" m02l03-client python error-demo.py
