# m04l03-08 · Tear down the lesson environment

**Lesson:** [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) (lesson 4.3, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

In the lesson: Stop the broker and remove the network. The broker holds the transaction log and both topics in memory, so stopping the container is sufficient cleanup. No state persists on the host after the container exits.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/abort.py`](starter/abort.py)
- [`starter/commit.py`](starter/commit.py)
- [`starter/reader.py`](starter/reader.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker rm -f m04l03-broker
   docker network rm m04l03-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l03-08` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
