# m07l01-05 · Remove the cluster

**Lesson:** [Three Brokers: Replication And Leaders](https://learnsome.tech/learn/kafka-course/m07l01) (lesson 7.1, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can start a three-node Redpanda cluster, create a topic with replication factor three, and read the leader and replica assignments from the partition table.

In the lesson: Remove the containers with the force flag; the broker names echo back as each one stops and is deleted. Then remove the network. The network is removed last because containers must leave a network before it can be deleted, and the force flag handles that ordering automatically. Keeping your machine clean matters when you run many lessons on a shared daemon, because name collisions will cause later lessons to fail before they start.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/setup.sh`](starter/setup.sh)
- [`starter/start-m07l01.sh`](starter/start-m07l01.sh)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l01/m07l01-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   docker rm -f m07l01-b1 m07l01-b2 m07l01-b3
   docker network rm m07l01-net
   ```
4. Edit `session.sh` and check it: `bash -n session.sh`.
5. Check it from the repository root: `./check m07l01-05`.

## How to check

`./check m07l01-05` copies `starter/` into a scratch directory and runs `bash -n session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
