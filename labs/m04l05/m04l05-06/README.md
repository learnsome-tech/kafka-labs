# m04l05-06 · Confirm the dead letter queue holds the final record

**Lesson:** [Retries With Backoff Topics](https://learnsome.tech/learn/kafka-course/m04l05) (lesson 4.5, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

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

1. Read `starter/dlqcheck.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l05-net -v "$PWD:/app" m04l05-client python dlqcheck.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l05-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
