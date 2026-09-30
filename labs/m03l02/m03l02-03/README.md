# m03l02-03 · Create a three-partition topic and produce six records

**Lesson:** [Consumer Groups And Partition Assignment](https://learnsome.tech/learn/kafka-course/m03l02) (lesson 3.2, module 3: Consumers And Consumer Groups) · Pro  
**Check:** Read along

## Goal

You can explain how Kafka assigns partitions across a consumer group, run a consumer that reports its assignment, and read rpk group describe to verify committed offsets per partition.

In the lesson: We create the topic with three partitions explicitly. Each partition will hold two records. We use the partition flag on rpk to force each record to a specific partition rather than letting the default key-hash routing decide, which lets the example stay deterministic regardless of how the hash falls. Partitions zero, one, and two each receive two single-letter values. The produce output carries a timestamp that changes on every run, so we move past it with an elision and read the results through the Python consumer.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m03l02-broker ; T=m03l02-events
   docker exec $B rpk topic create m03l02-events --partitions 3
   echo a | docker exec -i $B rpk topic produce $T --partition 0
   echo b | docker exec -i $B rpk topic produce $T --partition 0
   echo c | docker exec -i $B rpk topic produce $T --partition 1
   echo d | docker exec -i $B rpk topic produce $T --partition 1
   echo e | docker exec -i $B rpk topic produce $T --partition 2
   echo f | docker exec -i $B rpk topic produce $T --partition 2
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m03l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
