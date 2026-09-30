# m02l02-04 · Send six interleaved records and see routing

**Lesson:** [Keys And Ordering Per Partition](https://learnsome.tech/learn/kafka-course/m02l02) (lesson 2.2, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Read along

## Goal

You can produce records with keys, explain why the same key always lands in the same partition, and show that ordering is guaranteed within a partition but not across partitions.

In the lesson: Even though the sends alternate between order-one and order-two, each key routes to its own partition consistently. Order-one lands in partition zero every time, and order-two lands in partition one every time. The offset within each partition increments independently: order-one occupies offsets zero, one, and two in partition zero; order-two occupies offsets zero, one, and two in partition one. There is no record numbered offset three in either partition. The interleaved application-level sends did not mix the records inside the partitions. This demonstrates the central contract Kafka offers when you use keys: ordering is per-key, which means per-partition, and that ordering holds even under concurrent producers sending the same key.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/producer.py`](starter/producer.py)
- [`starter/run.sh`](starter/run.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/run.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   bash run.sh
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l02-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
