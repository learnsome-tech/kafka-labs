#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

docker rm -f m07l03-b1 m07l03-b2 m07l03-b3
#   m07l03-b1
#   m07l03-b2
#   m07l03-b3
docker network rm m07l03-net
#   m07l03-net
