# m06l02-03 · Write two orders and two outbox rows in one transaction

**Lesson:** [The Transactional Outbox](https://learnsome.tech/learn/kafka-course/m06l02) (lesson 6.2, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Checker

## Goal

You can implement a transactional outbox that writes a business row and an event record in a single database transaction, build a relay that publishes unpublished rows to Kafka and marks them published, and confirm that a second relay run produces no duplicates.

In the lesson: The populate program inserts a widget order and a gadget order, pairing each with an outbox row in the same implicit transaction. It uses the returned ID from each insert to build the event key and the payload. Everything commits in one transaction at the end. If the database had crashed between the two inserts, both business rows and both outbox rows would have disappeared together: the atomicity guarantee holds for all four writes.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/populate.py`](starter/populate.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l02/m06l02-03/starter`
2. Read `populate.py`.
3. Edit `populate.py` and check it: `python3 -m py_compile populate.py`.
4. Check it from the repository root: `./check m06l02-03`.

## How to check

`./check m06l02-03` copies `starter/` into a scratch directory and runs `python3 -m py_compile populate.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
