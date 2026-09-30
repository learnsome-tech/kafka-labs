# m04l05-05 · Retry router: record flows through all three tiers

**Lesson:** [Retries With Backoff Topics](https://learnsome.tech/learn/kafka-course/m04l05) (lesson 4.5, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

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

1. Read `starter/retry.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l05-net -v "$PWD:/app" m04l05-client python retry.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l05-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
