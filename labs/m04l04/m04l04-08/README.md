# m04l04-08 · Tear down the lesson environment

**Lesson:** [Poison Messages And Dead Letter Topics](https://learnsome.tech/learn/kafka-course/m04l04) (lesson 4.4, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can implement a consumer that routes malformed records to a dead letter topic with an error header, and explain why a single poison message blocks an entire partition if the exception is not caught.

In the lesson: Stop the broker and remove the network. Both the main topic and the dead letter topic are destroyed with the broker container, so the next run starts with clean partitions for each topic.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/dlq.py`](starter/dlq.py)
- [`starter/dlqread.py`](starter/dlqread.py)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker rm -f m04l04-broker
   docker network rm m04l04-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l04-08` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
