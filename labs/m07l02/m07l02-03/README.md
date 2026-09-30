# m07l02-03 · Read the in-sync replica set from the admin API

**Lesson:** [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) (lesson 7.2, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can read the in-sync replica set for a topic, set the minimum in-sync replica count, and explain why that number gates whether acks-all writes succeed.

In the lesson: The Kafka admin client exposes the in-sync replica set through the describe topics call. The program prints each partition's full replica list alongside its current in-sync set. With all three brokers healthy and caught up, the in-sync replica set matches the full replica list for every partition. Broker identifiers zero, one, and two appear in both columns. The build output line is masked. This is the baseline: all replicas are current, so an acks-all write would be acknowledged as soon as all three have persisted the record.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/isr.py`](starter/isr.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l02.sh`](starter/start-m07l02.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/isr.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m07l02-c . && docker run --rm --network m07l02-net m07l02-c python isr.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
