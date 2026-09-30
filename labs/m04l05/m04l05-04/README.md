# m04l05-04 · Produce one record to start the pipeline

**Lesson:** [Retries With Backoff Topics](https://learnsome.tech/learn/kafka-course/m04l05) (lesson 4.5, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a retry-topic pattern that routes a failing record through numbered tiers before landing it in a dead letter queue, and explain how an attempt counter in the value makes routing deterministic.

In the lesson: The producer sends a single payment record with an amount and an initial attempt counter of zero. The zero signals that this record has never been retried: the router that reads it will increment the counter to one before forwarding it to the first retry tier. Using zero as the starting value keeps the counter equal to the number of retries the record has already been through, which is a clean invariant for the routing logic to check when deciding whether to advance or stop.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l05/m04l05-04/starter`
2. Read `producer.py`.
3. Edit `producer.py` and check it: `python3 -m py_compile producer.py`.
4. Check it from the repository root: `./check m04l05-04`.

## How to check

`./check m04l05-04` copies `starter/` into a scratch directory and runs `python3 -m py_compile producer.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
