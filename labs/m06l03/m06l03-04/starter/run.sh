#!/usr/bin/env bash
set -u
bash setup.sh >/dev/null 2>&1
bash cdc.sh
