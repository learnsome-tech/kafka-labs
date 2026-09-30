# m04l03-04 · Read-committed consumer sees the three records

**Lesson:** [Transactions And Exactly Once Semantics](https://learnsome.tech/learn/kafka-course/m04l03) (lesson 4.3, module 4: Delivery Guarantees And Transactions) · Pro  
**Check:** Read along

## Goal

You can write a transactional Kafka producer that commits and aborts, explain what read-committed isolation means for a consumer, and describe why a read-committed consumer sees zero records from an aborted transaction.

In the lesson: The consumer sets isolation-level to read-committed, which tells the broker to deliver only records from committed transactions. After the commit from the previous segment, all three records are immediately visible. The consumer reads from the earliest offset, drains the partition, and lists the keys in the order they were committed. The output shows that the consumer sees three records and names each one in sequence. This is the atomic-visibility half of the transaction guarantee: records appear together as a committed batch or not at all.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/commit.py`](starter/commit.py)
- [`starter/reader.py`](starter/reader.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/reader.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker run --rm --network m04l03-net -v "$PWD:/app" m04l03-client python reader.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m04l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
