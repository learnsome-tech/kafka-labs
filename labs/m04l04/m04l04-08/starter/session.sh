#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m04l04-broker
#   m04l04-broker
docker network rm m04l04-net
#   m04l04-net
