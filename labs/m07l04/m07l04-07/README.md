# m07l04-07 · Remove the cluster

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

In the lesson: Remove the containers and the network. The lesson covered the two observable quantities that matter most when sizing a topic: how far behind consumers are, which you read with group describe, and how many consumers can work at the same time, which is bounded by the partition count. Both are simple to measure and straightforward to adjust in one direction.

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
   docker rm -f m07l04-b1 m07l04-b2 m07l04-b3
   docker network rm m07l04-net
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l04-07` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
