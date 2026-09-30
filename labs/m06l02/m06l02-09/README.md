# m06l02-09 · Remove the broker, database and network

**Lesson:** [The Transactional Outbox](https://learnsome.tech/learn/kafka-course/m06l02) (lesson 6.2, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can implement a transactional outbox that writes a business row and an event record in a single database transaction, build a relay that publishes unpublished rows to Kafka and marks them published, and confirm that a second relay run produces no duplicates.

In the lesson: Both containers are stopped and the network is removed. The names printed by docker rm confirm that the right resources were targeted. The outbox table and all its rows disappear with the database container, which is the expected cleanup for a lesson environment.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/populate.py`](starter/populate.py)
- [`starter/relay.py`](starter/relay.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l02/m06l02-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m06l02-broker m06l02-db
   docker network rm m06l02-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m06l02-09`.

## How to check

`./check m06l02-09` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
