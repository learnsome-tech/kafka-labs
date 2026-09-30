# m04l04-06 · Inspect the dead letter topic

**Lesson:** [Poison Messages And Dead Letter Topics](https://learnsome.tech/learn/kafka-course/m04l04) (lesson 4.4, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can implement a consumer that routes malformed records to a dead letter topic with an error header, and explain why a single poison message blocks an entire partition if the exception is not caught.

In the lesson: Reading the dead letter topic shows the full context of the failure. The key identifies which shipment failed. The raw value is the exact bytes the consumer received. The error header carries the parse exception message, which pinpoints the failure to the first character of the value. An operator can use this to diagnose the problem without touching the main topic or the consumer group offset. If the producer is fixed and the record needs reprocessing, it can be read from the dead letter topic and re-sent to the main orders topic.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dlq.py`](starter/dlq.py)
- [`starter/dlqread.py`](starter/dlqread.py): the listing from the lesson
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/dlqread.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l04-net -v "$PWD:/app" m04l04-client python dlqread.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l04-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
