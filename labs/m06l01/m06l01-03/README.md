# m06l01-03 · Scenario one: database commits, Kafka never receives

**Lesson:** [Dual Writes And Why They Lose Data](https://learnsome.tech/learn/kafka-course/m06l01) (lesson 6.1, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m06l01/m06l01-03/starter`
2. Read `db_first.py`.
3. Edit `db_first.py` and check it: `python3 -m py_compile db_first.py`.
4. Check it from the repository root: `./check m06l01-03`.

## How to check

`./check m06l01-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile db_first.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
