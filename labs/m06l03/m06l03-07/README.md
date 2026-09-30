# m06l03-07 · Remove the database and network

**Lesson:** [Change Data Capture In Principle](https://learnsome.tech/learn/kafka-course/m06l03) (lesson 6.3, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can start a Postgres instance with logical replication enabled, create a replication slot using the test decoding plugin, and read the change stream produced by insert and update statements to explain how a connector such as Debezium turns those changes into Kafka events.

In the lesson: We stop the database container and remove the network. This lesson does not use a Kafka broker because the focus is on the database side of change data capture: the write-ahead log, the replication slot, and the change stream format. The broker would be introduced by a connector in a real deployment, sitting between the slot and the consumer topics.

## Files

- [`starter/cdc.sh`](starter/cdc.sh)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l03/m06l03-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m06l03-db
   docker network rm m06l03-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m06l03-07`.

## How to check

`./check m06l03-07` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
