# m04l05-08 · Tear down the lesson environment

**Lesson:** [Retries With Backoff Topics](https://learnsome.tech/learn/kafka-course/m04l05) (lesson 4.5, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a retry-topic pattern that routes a failing record through numbered tiers before landing it in a dead letter queue, and explain how an attempt counter in the value makes routing deterministic.

In the lesson: Stop the broker and remove the network to leave the machine as it was before this lesson. All four retry topics are destroyed with the broker container, so no state remains on the host after the teardown completes and the working directory is cleared.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dlqcheck.py`](starter/dlqcheck.py)
- [`starter/producer.py`](starter/producer.py)
- [`starter/retry.py`](starter/retry.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l05/m04l05-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m04l05-broker
   docker network rm m04l05-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m04l05-08`.

## How to check

`./check m04l05-08` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
