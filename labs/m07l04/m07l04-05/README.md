# m07l04-05 · Measure lag and add partitions

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

In the lesson: The group describe output shows total lag of three: the group committed at offset two for partition zero but the topic now has five records at that partition. The per-partition breakdown confirms partitions one and two have zero lag because no records were sent there. Then add two more partitions to the topic: the OK line confirms the change. Describe the partitions: five partitions now visible in the header. New partitions initially have no records so their offsets read as zero or unknown until the first record arrives. Existing records in partition zero stay put; adding partitions never moves historical data.

## Files

- [`starter/Dockerfile`](starter/Dockerfile)
- [`starter/cons.py`](starter/cons.py)
- [`starter/prod.py`](starter/prod.py)
- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l04.sh`](starter/start-m07l04.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B="docker exec m07l04-b1"
   $B rpk group describe m07l04-grp
   $B rpk topic add-partitions m07l04-ev --num 2
   $B rpk topic describe m07l04-ev -p
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m07l04-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
