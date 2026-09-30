# m07l04-07 · Remove the cluster

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

In the lesson: Remove the containers and the network. The lesson covered the two observable quantities that matter most when sizing a topic: how far behind consumers are, which you read with group describe, and how many consumers can work at the same time, which is bounded by the partition count. Both are simple to measure and straightforward to adjust in one direction.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/cons.py`](starter/cons.py)
- [`starter/prod.py`](starter/prod.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l04.sh`](starter/start-m07l04.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l04/m07l04-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m07l04-b1 m07l04-b2 m07l04-b3
   docker network rm m07l04-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l04-07`.

## How to check

`./check m07l04-07` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
