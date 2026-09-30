# m06l01-04 · Verify state: database has the row, topic has nothing

**Lesson:** [Dual Writes And Why They Lose Data](https://learnsome.tech/learn/kafka-course/m06l01) (lesson 6.1, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can explain why writing to a database and a Kafka topic in sequence is not atomic, demonstrate both failure modes with runnable programs, and describe why neither write order eliminates the consistency risk.

In the lesson: The count confirms the database holds one row while the topic's high watermark is still zero: no records were ever produced to it. The two systems are already inconsistent after a single simulated failure. We truncate the orders table to start from a clean baseline before running the second scenario.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/db_first.py`](starter/db_first.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l01/m06l01-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   PG="docker exec m06l01-db psql -U postgres"
   $PG -c "SELECT count(*) FROM orders"
   docker exec m06l01-broker rpk topic describe m06l01-events
   $PG -c "TRUNCATE orders"
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m06l01-04`.

## How to check

`./check m06l01-04` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
