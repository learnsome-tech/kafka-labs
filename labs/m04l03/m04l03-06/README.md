# m04l03-06 · Aborted transaction: read-committed sees nothing

**Lesson:** [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) (lesson 4.3, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

In the lesson: This program sends three records inside a transaction and then calls abort instead of commit. The abort marker tells the broker to treat the entire batch as rolled back. The read-committed consumer that follows the abort reads from the earliest offset and waits the full timeout period, but the output shows zero records from the abort. The physical records are present in the partition log, but the broker withholds them from any read-committed subscriber because the transaction was not committed. This is the second half of the guarantee: an abort is invisible to a correctly configured consumer, regardless of how many bytes the aborted batch wrote to the log.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/abort.py`](starter/abort.py): the listing from the lesson
- [`starter/commit.py`](starter/commit.py)
- [`starter/reader.py`](starter/reader.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/abort.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python abort.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l03-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
