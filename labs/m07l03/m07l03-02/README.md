# m07l03-02 · Start the cluster, topic, and minimum ISR setting

**Lesson:** [Losing A Broker](https://learnsome.tech/learn/kafka-course/m07l03) (lesson 7.3, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can stop a broker, confirm a new leader is elected and the topic stays available, restart the broker and verify it rejoins, and explain why two broker failures block acks-all writes.

In the lesson: The startup script follows the same three-broker pattern, but without the auto-remove flag. Without auto-remove, a stopped container stays on disk and can be restarted by name, which is how a real operator would recover a rebooted machine. The script creates the orders topic with three partitions and replication factor three, then sets minimum ISR to two. The two OK lines confirm the topic creation and the configuration change. All later steps in this lesson will stop and restart containers rather than removing them.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start-m07l03.sh`](starter/start-m07l03.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/start-m07l03.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash start-m07l03.sh
   ```

## How to check

**Read along.** It needs Docker (or another container engine), which the lab sandbox does not have. Run it on a machine with Docker installed.

There is nothing to check: `./check m07l03-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
