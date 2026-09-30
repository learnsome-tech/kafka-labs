# m03l02-02 · Start the broker and network

**Lesson:** [Consumer Groups And Partition Assignment](https://learnsome.tech/learn/kafka-course/m03l02) (lesson 3.2, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can explain how Kafka assigns partitions across a consumer group, run a consumer that reports its assignment, and read rpk group describe to verify committed offsets per partition.

In the lesson: The setup script creates a dedicated Docker network for this lesson and launches the Redpanda broker in the same way as before: single-node developer mode, one thread, five hundred and twelve megabytes. The sleep gives the broker time to complete its startup sequence before anything else tries to connect to it.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/setup.sh`](starter/setup.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/setup.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l02-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
