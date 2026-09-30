# m02l02-02 · Start the broker with a two-partition topic

**Lesson:** [Keys And Ordering Per Partition](https://learnsome.tech/learn/kafka-course/m02l02) (lesson 2.2, module 2: Producers: Keys, Batches And Acks) · Pro  
**Check:** Checker

## Goal

You can produce records with keys, explain why the same key always lands in the same partition, and show that ordering is guaranteed within a partition but not across partitions.

In the lesson: This lesson needs two partitions so the two keys can land on different ones. The startup script creates the network and starts the broker, waits for the leadership election, and then creates the topic with the partitions flag set to two. With a single partition, both keys would hash to the same destination and there would be nothing to compare. Two partitions let you see key routing in action: one key always reaches partition zero, the other always reaches partition one, and the ordering within each partition remains stable across multiple sends.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start.sh`](starter/start.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-02/starter`
2. Read `start.sh`.
3. Edit `start.sh` and check it: `bash -n start.sh`.
4. Check it from the repository root: `./check m02l02-02`.

## How to check

`./check m02l02-02` copies `starter/` into a scratch directory and runs `bash -n start.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
