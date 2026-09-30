# m04l01-08 · Tear down the lesson environment

**Lesson:** [Duplicates Are The Default](https://learnsome.tech/learn/kafka-course/m04l01) (lesson 4.1, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can name the three events that produce a duplicate in a Kafka pipeline and explain why at-least-once delivery is the deliberate default.

In the lesson: Remove the broker container and then the network to leave the machine in exactly the state it was in before this lesson. The broker prints its own name when it stops, confirming which container was removed. The network does the same. Keeping cleanup inside the transcript lets a learner following along reproduce the full cycle from setup to teardown without leaving orphaned resources on the shared machine.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/consumer.py`](starter/consumer.py)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m04l01-broker
   docker network rm m04l01-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m04l01-08`.

## How to check

`./check m04l01-08` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
