# m07l04-02 · Start a cluster with a three-partition topic

**Lesson:** [Watching Lag And Sizing Partitions](https://learnsome.tech/learn/kafka-course/m07l04) (lesson 7.4, module 7: Operating A Cluster) · Pro  
**Check:** Checker

## Goal

You can measure consumer group lag with rpk group describe, add partitions to an existing topic, and explain why partition count is a ceiling on consumer-side parallelism.

In the lesson: The startup script launches a three-broker cluster in the same pattern used throughout this module, then creates a topic with three partitions and replication factor three. The OK confirmation appears after the container identifiers are elided. This topic will receive five records produced explicitly to partition zero, then a consumer group will read two of them and commit, leaving a measurable lag for the group describe command to report.

## Files

- [`starter/run.sh`](starter/run.sh): the command the lesson ran
- [`starter/start-m07l04.sh`](starter/start-m07l04.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l04/m07l04-02/starter`
2. Read `start-m07l04.sh`.
3. Edit `start-m07l04.sh` and check it: `bash -n start-m07l04.sh`.
4. Check it from the repository root: `./check m07l04-02`.

## How to check

`./check m07l04-02` copies `starter/` into a scratch directory and runs `bash -n start-m07l04.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

**Read along, with a syntax check.** Running it needs Docker and the Kafka broker containers the course starts, which the lab sandbox does not have, so the site shows it with its recorded output.

This is a checker lab: it checks that the shell script parses (`bash -n`), without running it. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/kafka-course/m07l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
