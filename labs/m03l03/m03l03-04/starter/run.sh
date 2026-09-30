#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
docker build -q -t m03l03-client . >/dev/null
