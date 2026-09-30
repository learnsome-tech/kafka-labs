# m04l04-05 · DLQ consumer: catch failures and route them forward

**Lesson:** [Poison Messages And Dead Letter Topics](https://learnsome.tech/learn/kafka-course/m04l04) (lesson 4.4, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can implement a consumer that routes malformed records to a dead letter topic with an error header, and explain why a single poison message blocks an entire partition if the exception is not caught.

In the lesson: The consumer wraps the JSON parse in a try-except block. When parsing succeeds, the record is counted as processed and the loop continues. When parsing raises a decode error, the consumer increments the failed counter, sends the original key and value to the dead letter topic with an error header containing the exception message, and continues to the next record. The partition is never blocked: the consumer advances past the bad record. The output confirms that three records were processed and one was routed to the dead letter topic.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dlq.py`](starter/dlq.py): the listing from the lesson
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/dlq.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l04-net -v "$PWD:/app" m04l04-client python dlq.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l04-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
