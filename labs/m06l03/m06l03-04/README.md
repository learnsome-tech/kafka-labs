# m06l03-04 · Read the change stream from the replication slot

**Lesson:** [Change Data Capture In Principle](https://learnsome.tech/learn/kafka-course/m06l03) (lesson 6.3, module 6: Event-Driven: Outbox, CDC, Compaction) · Pro  
**Check:** Read along

## Goal

You can start a Postgres instance with logical replication enabled, create a replication slot using the test decoding plugin, and read the change stream produced by insert and update statements to explain how a connector such as Debezium turns those changes into Kafka events.

In the lesson: The slot function returns every change recorded since the slot was created. We select only the data column and filter out the transaction boundary lines so the output shows only the content changes. The insert row names the table, the operation, and each column with its type and new value. The update row shows the same structure with the new item value. This is what a connector reads: a structured description of every data change in the order it was applied.

## Files

- [`starter/cdc.sh`](starter/cdc.sh): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/cdc.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash cdc.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m06l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
