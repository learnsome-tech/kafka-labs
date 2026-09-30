# m04l03-08 · Tear down the lesson environment

**Lesson:** [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) (lesson 4.3, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

In the lesson: Stop the broker and remove the network. The broker holds the transaction log and both topics in memory, so stopping the container is sufficient cleanup. No state persists on the host after the container exits.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/abort.py`](starter/abort.py)
- [`starter/commit.py`](starter/commit.py)
- [`starter/reader.py`](starter/reader.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m04l03-broker
   docker network rm m04l03-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m04l03-08`.

## How to check

`./check m04l03-08` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
