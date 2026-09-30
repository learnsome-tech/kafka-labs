#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m03l05-client . >/dev/null
