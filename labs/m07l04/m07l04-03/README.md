# m07l04-03 · Produce five records ahead of the consumer

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

In the lesson: The producer assigns each record to partition zero explicitly, which makes the output deterministic: five consecutive offsets accumulate in the same partition. In a real system you would use key-based routing so that related records are co-located, and the hash function determines which partition each key lands in. For this measurement exercise, forcing everything to one partition gives a clean baseline: five records in partition zero, nothing in partitions one or two. The build output is elided. Each line confirms partition zero offset zero through four were written and acknowledged.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/prod.py`](starter/prod.py): the listing from the lesson
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l04.sh`](starter/start-m07l04.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/prod.py` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   docker build -q -t m07l04-c . && docker run --rm --network m07l04-net m07l04-c python prod.py
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l04-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
