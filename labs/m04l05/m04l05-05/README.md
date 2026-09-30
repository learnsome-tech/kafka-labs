# m04l05-05 · Retry router: record flows through all three tiers

**Lesson:** [Retries With Backoff Topics](https://learnsome.tech/learn/kafka-course/m04l05) (lesson 4.5, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a retry-topic pattern that routes a failing record through numbered tiers before landing it in a dead letter queue, and explain how an attempt counter in the value makes routing deterministic.

In the lesson: The router iterates over every tier except the last. For each tier it creates a consumer, reads whatever is there, increments the attempt counter in the value, and sends the record to the next tier. After flushing, it closes the consumer and moves on to the next tier. Because the record fails at every tier in this demonstration, it advances all the way to the dead letter queue on the third attempt. The output traces the full path: orders to retry-one, retry-one to retry-two, retry-two to dead letter. In a real implementation, each tier would attempt the business operation before deciding whether to advance or to consider the record successfully handled.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py)
- [`starter/retry.py`](starter/retry.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l05/m04l05-05/starter`
2. Read `retry.py`.
3. Edit `retry.py` and check it: `python3 -m py_compile retry.py`.
4. Check it from the repository root: `./check m04l05-05`.

## How to check

`./check m04l05-05` copies `starter/` into a scratch directory and runs `python3 -m py_compile retry.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
