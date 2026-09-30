# m03l04-07 · Inspect the group and clean up

**Lesson:** [Rebalancing And Its Cost](https://learnsome.tech/learn/kafka-course/m03l04) (lesson 3.4, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Checker

## Goal

You can explain what triggers a rebalance, configure session and heartbeat timeouts, and describe what happens to a consumer that exceeds max-poll-interval-milliseconds.

In the lesson: After the consumer exits, rpk group describe shows the workers group with committed offsets for all three partitions and lag zero. There are no active members in the output because the consumer closed cleanly. We then stop the broker and remove the network.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker exec m03l04-broker rpk group describe m03l04-workers
   docker rm -f m03l04-broker
   docker network rm m03l04-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m03l04-07`.

## How to check

`./check m03l04-07` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
