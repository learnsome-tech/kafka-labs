# m04l05-06 · Confirm the dead letter queue holds the final record

**Lesson:** [Retries With Backoff Topics](https://learnsome.tech/learn/kafka-course/m04l05) (lesson 4.5, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Checker

## Goal

You can implement a retry-topic pattern that routes a failing record through numbered tiers before landing it in a dead letter queue, and explain how an attempt counter in the value makes routing deterministic.

In the lesson: The dead letter queue holds exactly one record, and its attempt counter is three. This confirms that the record passed through both retry topics before landing here. The attempt counter in the value is the audit trail: an operator reading the dead letter queue can see immediately how many times the record was tried before being abandoned. The original key is preserved from the producer, so the payment identifier remains visible for manual investigation or replay to the main topic after a fix is deployed.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dlqcheck.py`](starter/dlqcheck.py): the listing from the lesson
- [`starter/producer.py`](starter/producer.py)
- [`starter/retry.py`](starter/retry.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l05/m04l05-06/starter`
2. Read `dlqcheck.py`.
3. Edit `dlqcheck.py` and check it: `python3 -m py_compile dlqcheck.py`.
4. Check it from the repository root: `./check m04l05-06`.

## How to check

`./check m04l05-06` copies `starter/` into a scratch directory and runs `python3 -m py_compile dlqcheck.py` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the Python program compiles (`python3 -m py_compile`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
