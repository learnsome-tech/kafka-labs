# m04l03-03 · Transactional producer: commit three records

**Lesson:** [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) (lesson 4.3, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

In the lesson: The producer is configured with a transactional identifier, which enables the transactional API. It calls init-transactions once at startup to register with the broker, then calls begin-transaction before the sends. All three records go into the open transaction. Commit-transaction sends a commit marker to the broker, which makes all three records visible simultaneously. The full sequence is: init, begin, send, send, send, commit. No records are delivered to any read-committed consumer until that marker arrives. The program then confirms the commit with a single printed line, and the next segment reads them back with isolation-level read-committed.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/commit.py`](starter/commit.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/commit.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python commit.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
