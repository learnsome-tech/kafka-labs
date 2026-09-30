#!/usr/bin/env bash
# Shell session from the video, as a file you can run.
# Each command below was typed at the prompt; the commented lines are what
# Docker printed back.
set -u

B=m05l02-broker
S=m05l02-orders-value
docker exec $B rpk registry subject list
#   m05l02-orders-value
docker exec $B rpk registry schema get $S --schema-version 1
#   SUBJECT              VERSION  ID    TYPE
#   m05l02-orders-value  1        1     JSON
