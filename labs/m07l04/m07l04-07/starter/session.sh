#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m07l04-b1 m07l04-b2 m07l04-b3
#   m07l04-b1
#   m07l04-b2
#   m07l04-b3
docker network rm m07l04-net
#   m07l04-net
