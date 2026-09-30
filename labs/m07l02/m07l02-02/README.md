# m07l02-02 · Start a cluster, create a topic, set minimum ISR

**Lesson:** [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) (lesson 7.2, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can read the in-sync replica set for a topic, set the minimum in-sync replica count, and explain why that number gates whether acks-all writes succeed.

In the lesson: The startup script launches three brokers in the same way as the previous lesson, then creates a topic with three partitions and replication factor three once the cluster has formed. After that, alter-config sets minimum in-sync replicas to two on this topic. Two confirmations appear: one for the topic creation and one for the configuration change. The rest of the output is masked container identifiers that appear during startup. With three replicas and minimum ISR of two, the cluster can tolerate one follower falling behind or one broker going offline before writes with acks set to all are blocked.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start-m07l02.sh`](starter/start-m07l02.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/start-m07l02.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash start-m07l02.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l02-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
