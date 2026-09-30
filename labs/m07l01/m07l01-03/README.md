# m07l01-03 · Inspect the cluster and create a replicated topic

**Lesson:** [Three Brokers: Replication And Leaders](https://learnsome.tech/learn/kafka-course/m07l01) (lesson 7.1, module 7: Operating A Cluster) · Pro  
**Check:** Checker

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

1. Go to the starter: `cd labs/m07l01/m07l01-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   B="docker exec m07l01-b1"
   $B rpk cluster info
   $B rpk topic create m07l01-orders -p 3 -r 3
   $B rpk topic describe m07l01-orders -p
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l01-03`.

## How to check

`./check m07l01-03` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
