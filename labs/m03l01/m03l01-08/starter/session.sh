#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m03l01-broker
#   m03l01-broker
docker network rm m03l01-net
#   m03l01-net
