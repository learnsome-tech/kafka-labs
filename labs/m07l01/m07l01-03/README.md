# m07l01-03 · Inspect the cluster and create a replicated topic

**Lesson:** [Three Brokers: Replication And Leaders](https://learnsome.tech/learn/kafka-course/m07l01) (lesson 7.1, module 7: Operating A Cluster) · Pro  
**Check:** Read along

## Goal

You can start a three-node Redpanda cluster, create a topic with replication factor three, and read the leader and replica assignments from the partition table.

In the lesson: Store the exec prefix in a shell variable to keep subsequent commands short. Then cluster info shows the brokers: three brokers appear in the table, broker zero carries the asterisk marking it as the current controller. The cluster identifier on the first line changes on every machine, so it is elided. Create the orders topic with three partitions and replication factor three: the factor matches the cluster size, so every broker holds one copy of every partition. Describe its partitions: the header names the columns, then the rows are elided because the LEADER column varies by election and would mismatch on a different run. The REPLICAS column always shows all three broker identifiers, confirming every copy is registered.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l01.sh`](starter/start-m07l01.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.
2. On a machine that has what it needs, the lesson ran it with:

   ```sh
   bash setup.sh >/dev/null 2>&1
   B="docker exec m07l01-b1"
   $B rpk cluster info
   $B rpk topic create m07l01-orders -p 3 -r 3
   $B rpk topic describe m07l01-orders -p
   ```

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m07l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
