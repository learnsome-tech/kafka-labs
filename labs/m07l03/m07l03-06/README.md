# m07l03-06 · Remove all containers and the network

**Lesson:** [Losing A Broker](https://learnsome.tech/learn/kafka-course/m07l03) (lesson 7.3, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can stop a broker, confirm a new leader is elected and the topic stays available, restart the broker and verify it rejoins, and explain why two broker failures block acks-all writes.

In the lesson: Force-remove the three broker containers. The force flag stops running containers before deleting them and also handles containers already in the stopped state. In this lesson brokers two and three were stopped and left around for the error demonstration, so the force flag picks them up in that state. Remove the network last. The machine is clean.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/fail.py`](starter/fail.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l03.sh`](starter/start-m07l03.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l03/m07l03-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m07l03-b1 m07l03-b2 m07l03-b3
   docker network rm m07l03-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l03-06`.

## How to check

`./check m07l03-06` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
