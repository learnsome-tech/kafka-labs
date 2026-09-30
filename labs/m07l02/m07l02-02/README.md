# m07l02-02 · Start a cluster, create a topic, set minimum ISR

**Lesson:** [In-Sync Replicas And Minimum ISR](https://learnsome.tech/learn/kafka-course/m07l02) (lesson 7.2, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can read the in-sync replica set for a topic, set the minimum in-sync replica count, and explain why that number gates whether acks-all writes succeed.

In the lesson: The startup script launches three brokers in the same way as the previous lesson, then creates a topic with three partitions and replication factor three once the cluster has formed. After that, alter-config sets minimum in-sync replicas to two on this topic. Two confirmations appear: one for the topic creation and one for the configuration change. The rest of the output is masked container identifiers that appear during startup. With three replicas and minimum ISR of two, the cluster can tolerate one follower falling behind or one broker going offline before writes with acks set to all are blocked.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start-m07l02.sh`](starter/start-m07l02.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l02/m07l02-02/starter`
2. Read `start-m07l02.sh`.
3. Edit `start-m07l02.sh` and check it: `bash -n start-m07l02.sh`.
4. Check it from the repository root: `./check m07l02-02`.

## How to check

`./check m07l02-02` copies `starter/` into a scratch directory and runs `bash -n start-m07l02.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
