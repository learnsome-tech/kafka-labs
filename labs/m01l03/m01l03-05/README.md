# m01l03-05 · Describe the topic partition layout

**Lesson:** [Topics, Partitions And Where A Record Lands](https://learnsome.tech/learn/kafka-course/m01l03) (lesson 1.3, module 1: The Log: Topics, Partitions And Offsets) · Free  
**Check:** Read along

## Goal

You can create a topic with multiple partitions, produce keyed records and confirm they always land on the same partition, and explain why unkeyed records do not carry ordering guarantees.

In the lesson: rpk topic describe shows the full structure of a topic. The summary section lists the name, whether it is internal, the cleanup policy and the partition count. Below that, the partition table shows one row per partition with the leader, epoch, replicas, log start offset and high watermark. The high watermark for a partition is the next offset to be written: a high watermark of three means three records have been written and the next write will be at offset three. For our three-partition topic, one partition has a high watermark of three and the other two show zero, which confirms that all three keyed records went to the same partition rather than spreading across all three.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start.sh`](starter/start.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B=m01l03-broker
   T=m01l03-orders
   docker exec $B rpk topic describe $T
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m01l03-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
