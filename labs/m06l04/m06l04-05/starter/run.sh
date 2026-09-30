#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker run --rm --network m06l04-net -v "$PWD:/app" m06l04-client python fold_prices.py
