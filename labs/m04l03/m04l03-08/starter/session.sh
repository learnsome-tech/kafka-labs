#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m04l03-broker
#   m04l03-broker
docker network rm m04l03-net
#   m04l03-net
