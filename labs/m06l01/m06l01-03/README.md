# m06l01-03 · Scenario one: database commits, Kafka never receives

**Lesson:** [Dual Writes And Why They Lose Data](https://learnsome.tech/learn/kafka-course/m06l01) (lesson 6.1, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Read along

## Goal

You can explain why writing to a database and a Kafka topic in sequence is not atomic, demonstrate both failure modes with runnable programs, and describe why neither write order eliminates the consistency risk.

In the lesson: This program simulates the database-first scenario. Autocommit is enabled, so the insert commits the moment the cursor executes it. The program then discovers that Kafka is unreachable, leaving the event not published, and exits. The database write already committed before anything went wrong. The orders table now holds a row for a keyboard order but no event describing that order has ever reached the broker. A consumer that relies on the stream will never see this one.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/db_first.py`](starter/db_first.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/db_first.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m06l01-net -v "$PWD:/app" m06l01-client python db_first.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m06l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
